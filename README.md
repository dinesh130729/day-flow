# Dayflow HR Portal

A browser-based HR management portal with an HTML interface, JavaScript browser entry point, Python server, and SQLite schema.

## Run in the browser

- Employee: `EMP-IN-104`, `EMP-IN-105`, or `EMP-IN-106`, with any password
- Admin: `admin@hr.com` / `admin123`
access the website here  <https://dayflowhrsodoo.netlify.app>.

CONTRIBUTION BY TEAM MEMBERS:
1.SHASHANK V : DASHBOARD[EMPLOYEE AND ADMIN ],ATTENDANCE MANAGEMENT.
2.AKSHAY KUMAR P : AUTHENTICATION AND AUTHORISATION , EMPLOYEE PROFILE MANAGEMENT.
3.GRATUS NICHOLAS : LEAVE AND TIME-OFF MANAGMENT.
4.DINESH L : CREATED REPOSTORY AND PAYROLL/SALARY MANAGEMENT 

PERCENTAGE OF DISTRIBUTION OF WORK:
1.SHASHANK V :35%
2.AKSHAY KUMAR P :25%
3.GRATUS NICHOLAS :20%
4.DINESH L :20%

The server creates `dayflow.db` from `schema.sql` on startup and exposes:


No third-party Python packages are required. `requirements.txt` is included for project tooling compatibility.

## Project files

- `Dashboard.html`: browser UI and existing client interactions
- `server.py`: Python static server and JSON API
- `schema.sql`: SQLite tables and demo seed data
