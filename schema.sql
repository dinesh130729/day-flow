PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS employees (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    role TEXT NOT NULL,
    phone TEXT NOT NULL,
    address TEXT NOT NULL,
    ctc INTEGER NOT NULL CHECK (ctc > 0),
    pic TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS attendance (
    id INTEGER PRIMARY KEY,
    employee_id TEXT NOT NULL REFERENCES employees(id),
    attendance_date TEXT NOT NULL,
    check_in TEXT NOT NULL,
    check_out TEXT NOT NULL,
    status TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS leave_requests (
    id INTEGER PRIMARY KEY,
    employee_id TEXT NOT NULL REFERENCES employees(id),
    leave_type TEXT NOT NULL,
    date_range TEXT NOT NULL,
    remarks TEXT NOT NULL,
    status TEXT NOT NULL,
    hr_comment TEXT NOT NULL DEFAULT ''
);

INSERT OR IGNORE INTO employees VALUES
('EMP-IN-104', 'Aarav Sharma', 'Senior Software Engineer | Engineering', '+91 98765 43210', 'Indiranagar, Bengaluru, Karnataka - 560038', 1450000, 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&q=80&w=200'),
('EMP-IN-105', 'Priya Patel', 'Lead Product Designer | UX Design', '+91 98112 23344', 'Koramangala, Bengaluru, Karnataka - 560034', 1620000, 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&q=80&w=200'),
('EMP-IN-106', 'Rohan Iyer', 'QA Automation Engineer | Quality', '+91 97445 66778', 'HSR Layout, Bengaluru, Karnataka - 560102', 980000, 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&q=80&w=200');

INSERT OR IGNORE INTO attendance VALUES
(1, 'EMP-IN-104', '22 Aug 2026', '09:30 AM', '--', 'Present'),
(2, 'EMP-IN-104', '21 Aug 2026', '09:15 AM', '06:30 PM', 'Present'),
(3, 'EMP-IN-104', '20 Aug 2026', '09:45 AM', '02:00 PM', 'Half-Day'),
(4, 'EMP-IN-105', '22 Aug 2026', '09:15 AM', '--', 'Present'),
(5, 'EMP-IN-106', '22 Aug 2026', '--', '--', 'Absent');

INSERT OR IGNORE INTO leave_requests VALUES
(101, 'EMP-IN-104', 'Casual Leave', '28 Aug - 29 Aug', 'Family Function', 'Approved', 'Enjoy your break!'),
(102, 'EMP-IN-104', 'Sick Leave', '12 Aug - 12 Aug', 'Fever & Cold', 'Approved', 'Medical certificate updated'),
(103, 'EMP-IN-105', 'Paid Leave', '01 Sep - 04 Sep', 'Ganesh Chaturthi Holiday', 'Pending', '');
