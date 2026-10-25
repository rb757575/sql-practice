DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES 
(1, 'Sara', 'IT', 4500),
(2, 'Ali', 'IT', 7000),
(3, 'Reza', 'HR', 3000),
(4, 'Mona', 'HR', 4200),
(5, 'Koorosh', 'Sales', 6000),
(6, 'Zohreh', 'Sales', 3500);




SELECT
   emp_name,
   salary
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);
