DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount INT,
    order_date DATE
);

INSERT INTO orders VALUES 
(101, '  reza   ', 150, '2026-05-10'),
(102, 'SARA', 300, '2026-05-15'),
(103, 'reza', 200, '2026-06-01'),
(104, '  SARA  ', 450, '2026-06-20'),
(105, 'SARA', 100, '2026-07-05'),
(106, 'ali', 500, '2026-07-10');


SELECT 
    UPPER(TRIM(customer_name)) AS CLEAN_CUSTOMER,
    COUNT(orders.order_id) AS TOTAL_ORDERS,
    SUM(orders.amount) AS TOTAL_SPENT,
    MAX(orders.order_date) AS LAST_ORDER_DATE,
    CASE 
            WHEN COUNT(orders.order_id) > 2 THEN 'LOYAL'
            ELSE 'REGULAR'
            END AS CUSTOMER_STATUS,
            DENSE_RANK() OVER(ORDER BY SUM(orders.amount) DESC) AS RANK_BY_SPENT
FROM orders
GROUP BY UPPER(TRIM(customer_name));

