DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES 
(1, 'IT'),
(2, 'HR'),
(3, 'Sales'),
(4, 'Marketing');
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);
INSERT INTO employees VALUES 
(1, 'Sara', 1, 4500),
(2, 'Ali', 1, 7000),
(3, 'Reza', 2, 3000),
(4, 'Mona', 2, 4200),
(5, 'Koorosh', 3, 6000),
(6, 'Zohreh', 3, 3500),
(7, 'Sohrab', 99, 5000);
SELECT 
    employees.emp_name,
    employees.dept_id,
    employees.salary,
    departments.dept_name
FROM employees
LEFT JOIN departments ON 
employees.dept_id = departments.dept_id;
