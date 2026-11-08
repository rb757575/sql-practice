CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    quantity INTEGER,
    unit_price REAL
);

INSERT INTO sales VALUES 
(1, 'Laptop', ' Electronics ', 2, 600.00),
(2, 'T-Shirt', 'Clothing', 5, 20.00),
(3, 'Headphones', 'Electronics', 4, 50.00),
(4, 'Jeans', ' Clothing ', 2, 40.00),
(5, 'Smartwatch', 'Electronics', 1, 150.00),
(6, 'Coffee Maker', 'Home', 1, 80.00);

SELECT 
    UPPER(TRIM(category)) AS CATEGORY,
    SUM(quantity) AS TOTAL_ITEMS_SOLD,
    SUM(unit_price*quantity) AS TOTAL_REVENUE,
    CASE
        WHEN SUM(unit_price*quantity) > 1000 THEN 'TOP SELLER'
        WHEN SUM(unit_price*quantity) >= 500 THEN 'MODERATE'
        ELSE 'LOW PERFORMANCE'
        END AS PERFORMANCE_LEVEL
FROM sales
GROUP BY UPPER(TRIM(category))
ORDER BY TOTAL_REVENUE DESC;
