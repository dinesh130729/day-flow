# Dayflow HR Portal

A browser-based HR management portal with an HTML interface, JavaScript browser entry point, Python server, and SQLite schema.

## Run in the browser

Open `Dashboard.html` directly in a browser. The demo login works offline:

- Employee: `EMP-IN-104`, `EMP-IN-105`, or `EMP-IN-106`, with any password
- Admin: `admin@hr.com` / `admin123`

## Run with Python and SQLite

From this folder, run:

```bash
python3 server.py
```

Then open <https://dayflowhrsodoo.netlify.app>.

The server creates `dayflow.db` from `schema.sql` on startup and exposes:

- `GET /api/health`
- `GET /api/employees`

No third-party Python packages are required. `requirements.txt` is included for project tooling compatibility.

## Project files

- `Dashboard.html`: browser UI and existing client interactions
- `app.js`: browser entry point and API client
- `server.py`: Python static server and JSON API
- `schema.sql`: SQLite tables and demo seed data
