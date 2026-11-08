DROP TABLE IF EXISTS monthly_sales;

CREATE TABLE monthly_sales (
    month_id INT,
    month_name VARCHAR(20),
    revenue INT
);

INSERT INTO monthly_sales VALUES 
(1, 'January', 1000),
(2, 'February', 1200),
(3, 'March', 900),
(4, 'April', 1500),
(5, 'May', 2000);
SELECT
    month_id,
    month_name,
    revenue,
    AVG(revenue) OVER( ORDER BY month_id 
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
    AS average_up_to_now
FROM monthly_sales;
