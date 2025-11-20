CREATE DATABASE employee_payroll;
USE employee_payroll;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'HR'), (2, 'Engineering'), (3, 'Finance');

INSERT INTO employees VALUES
(101, 'Akhil', 2, 60000),
(102, 'Ram', 1, 35000),
(103, 'Devi', 3, 45000);

-- Join
SELECT e.emp_name, d.dept_name, e.salary 
FROM employees e 
JOIN departments d ON e.dept_id = d.dept_id;

-- Max salary
SELECT MAX(salary) AS highest_salary FROM employees;

-- Salary department wise
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;
