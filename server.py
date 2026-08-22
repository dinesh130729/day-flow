from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
import json
import sqlite3
from pathlib import Path

ROOT = Path(__file__).parent
DATABASE = ROOT / "dayflow.db"


def query_employees():
    connection = sqlite3.connect(DATABASE)
    connection.row_factory = sqlite3.Row
    try:
        rows = connection.execute(
            "SELECT id, name, role, phone, address, ctc, pic FROM employees ORDER BY name"
        ).fetchall()
        return [dict(row) for row in rows]
    finally:
        connection.close()


class DayflowHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == "/api/health":
            self.respond({"status": "ok", "service": "dayflow"})
            return
        if self.path == "/api/employees":
            self.respond(query_employees())
            return
        super().do_GET()

    def respond(self, payload):
        body = json.dumps(payload).encode("utf-8")
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)


if __name__ == "__main__":
    with sqlite3.connect(DATABASE) as connection:
        connection.executescript((ROOT / "schema.sql").read_text(encoding="utf-8"))
    server = ThreadingHTTPServer(("127.0.0.1", 8000), DayflowHandler)
    print("Dayflow is running at http://127.0.0.1:8000/Dashboard.html")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nDayflow stopped.")
    finally:
        server.server_close()
