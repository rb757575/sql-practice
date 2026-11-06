DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES 
(1, 'Sara', 'IT', 7000),
(2, 'Ali', 'IT', 7000),       
(3, 'Reza', 'IT', 5000),
(4, 'Mona', 'HR', 4500),
(5, 'Koorosh', 'HR', 4500),    
(6, 'Zohreh', 'HR', 3000),
(7, 'Sohrab', 'Sales', 6000);

SELECT 
    emp_name,
    dept_name,
    salary,
    ROW_NUMBER() OVER (PARTITION BY dept_name ORDER BY salary DESC) AS row_number,
    Rank() OVER (PARTITION BY dept_name ORDER BY salary DESC) AS rank,
    DENSE_RANK() OVER(PARTITION BY dept_name ORDER BY salary DESC) AS dense_rank 
FROM employees;

