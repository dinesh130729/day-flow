# Dayflow HR Portal

A browser-based HR management portal with an HTML interface, JavaScript browser entry point, Python server, and SQLite schema.

## Run in the browser

- Employee: `EMP-IN-104`, `EMP-IN-105`, or `EMP-IN-106`, with any password
- Admin: `admin@hr.com` / `admin123`
access the website here  <https://dayflowhrsodoo.netlify.app>.

The server creates `dayflow.db` from `schema.sql` on startup and exposes:


No third-party Python packages are required. `requirements.txt` is included for project tooling compatibility.

## Project files

- `Dashboard.html`: browser UI and existing client interactions
- `app.js`: browser entry point and API client
- `server.py`: Python static server and JSON API
- `schema.sql`: SQLite tables and demo seed data
