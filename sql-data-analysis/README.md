# Customer Loyalty & Spending Analysis (SQL)

## Scenario
This analysis evaluates customer spending patterns, aggregates total expenditure per user per year, counts high-value (VIP) orders (amount >= $500), and ranks customers based on their total spending using window functions.

## SQL Query
```sql
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS orders;

CREATE TABLE users (
    user_id INT,
    full_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT,
    user_id INT,
    amount INT,
    order_date DATE
);

INSERT INTO users VALUES 
(1, '  ali reza  '),
(2, 'Sara M'),
(3, 'mohammad');

INSERT INTO orders VALUES 
(101, 1, 600, '2026-08-01'),
(102, 1, 200, '2026-08-10'),
(103, 2, 800, '2026-08-02'),
(104, 2, 1200, '2026-09-01'),
(105, 3, 300, '2026-09-05');

SELECT 
    UPPER(TRIM(users.full_name)) AS USER_NAME,
    SUM(orders.amount) AS TOTAL_SPENT,
    COUNT(CASE
            WHEN orders.amount >= 500 THEN 1
            ELSE NULL
          END) AS VIP_ORDERS_COUNT,
    STRFTIME('%Y', orders.order_date) AS ORDER_YEAR,
    DENSE_RANK() OVER(ORDER BY SUM(orders.amount) DESC) AS USER_RANK
FROM users
JOIN orders ON users.user_id = orders.user_id
GROUP BY users.full_name, STRFTIME('%Y', orders.order_date);