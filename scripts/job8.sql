-- 1
CREATE DATABASE IF NOT EXISTS SomeCompany;
USE SomeCompany;

-- 2
CREATE TABLE IF NOT EXISTS Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  birthdate DATE,
  position VARCHAR(100),
  department_id INT
);

-- 3
CREATE TABLE IF NOT EXISTS Departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(100),
  department_head INT,
  location VARCHAR(100)
);

-- 4
INSERT INTO Employees (employee_id, first_name, last_name, birthdate, position, department_id) VALUES
(13, 'Liam', 'Martin', '1991-04-12', 'DevOps Engineer', 1),
(14, 'Maya', 'Lopez', '1992-07-08', 'Data Engineer', 1),
(15, 'Noah', 'Nguyen', '1990-11-02', 'Product Owner', 2),
(16, 'Zara', 'Khan', '1994-02-21', 'UI Designer', 1),
(17, 'Omar', 'Ben', '1993-09-15', 'QA Engineer', 1),
(18, 'Clara', 'Duval', '1988-12-07', 'HR Specialist', 3);

-- 5
SELECT first_name, last_name, position
FROM Employees;

-- 6
UPDATE Employees
SET position = 'Senior DevOps Engineer'
WHERE employee_id = 13;

-- 7
DELETE FROM Employees
WHERE employee_id = 18;

-- 8
SELECT e.first_name, e.last_name, d.department_name, d.location
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.department_id;

-- 9
SELECT e.first_name, e.last_name, e.position
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

SELECT e.first_name, e.last_name, e.position
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Project Management';

SELECT e.first_name, e.last_name, e.position
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Human Resources';

-- 10
SELECT d.department_name, d.location, CONCAT(m.first_name, ' ', m.last_name) AS manager_name
FROM Departments d
LEFT JOIN Employees m ON d.department_head = m.employee_id
ORDER BY d.department_name;

-- 11
INSERT INTO Departments (department_id, department_name, department_head, location)
VALUES (4, 'Marketing', 8, 'Branch Office West'); -- set department_head to an existing employee id (or NULL)

UPDATE Employees
SET department_id = 4
WHERE employee_id IN (8, 14); -- example employee ids

-- 12
CREATE TABLE IF NOT EXISTS Projects (
  project_id INT PRIMARY KEY,
  project_name VARCHAR(200),
  start_date DATE,
  end_date DATE,
  department_id INT
);

INSERT INTO Projects (project_id, project_name, start_date, end_date, department_id) VALUES
(1, 'Platform Migration', '2024-01-15', '2024-07-30', 1),
(2, 'New Marketing Campaign', '2024-03-01', '2024-05-31', 4);
