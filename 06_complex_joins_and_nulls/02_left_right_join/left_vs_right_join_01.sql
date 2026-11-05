DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO customers VALUES 
(1, 'Ali'),
(2, 'Sara'),
(3, 'Reza'),
(4, 'Mona');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

INSERT INTO orders VALUES 
(101, 1, 250), 
(102, 1, 400), 
(103, 2, 150), 
(104, 99, 500); 

SELECT 
    customers.customer_name,
    orders.amount
FROM customers
LEFT JOIN orders on 
customers.customer_id = orders.customer_id;