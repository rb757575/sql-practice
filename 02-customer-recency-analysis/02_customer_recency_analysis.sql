CREATE TABLE IF NOT EXISTS customer_orders (
    order_id INT,
    customer_name VARCHAR(50),
    amount INT,
    order_date DATE
);

INSERT INTO customer_orders VALUES
(101, '  sara ', 150, '2026-05-10'),
(102, 'SARA', 300, '2026-09-15'),
(103, '  reza', 700, '2026-06-01'),
(104, 'ALI  ', 450, '2026-08-20'),
(105, 'reza ', 100, '2026-07-05');

SELECT  
    UPPER(TRIM(customer_name)) AS CLEAN_CUSTOMER,
    MAX(order_date) AS LAST_PURCHASE_DATE,
    SUM(amount) AS TOTAL_SPENT,
    CASE
        WHEN MAX(order_date) >= '2026-08-01' THEN 'ACTIVE'
        ELSE 'INACTIVE'
        END AS CUSTOMER_STATUS,
        DENSE_RANK() OVER (ORDER BY SUM(amount) DESC) AS RANK_SPENT
FROM customer_orders
GROUP BY UPPER(TRIM(customer_name)) 
ORDER BY TOTAL_SPENT DESC;