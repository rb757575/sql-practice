DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT
);

INSERT INTO products VALUES 
(1, 'Laptop Pro', 'Electronics', 1200),
(2, 'Tablet X', 'Electronics', 800),
(3, 'Smart Watch', 'Electronics', 800),     
(4, 'Wireless Mouse', 'Electronics', 50),
(5, 'Running Shoes', 'Sports', 150),
(6, 'Yoga Mat', 'Sports', 50),
(7, 'Dumbbells', 'Sports', 150);  

SELECT
    product_name,
    category,
    price,
    ROW_NUMBER() OVER(PARTITION BY category 
    ORDER  BY price DESC) AS item_row,
    RANK() OVER(PARTITION BY category 
    ORDER  BY price DESC) AS  item_rank,
    DENSE_RANK()OVER(PARTITION BY category 
    ORDER  BY price DESC) AS item_dense_rank
FROM products;
