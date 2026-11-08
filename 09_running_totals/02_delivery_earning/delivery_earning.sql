DROP TABLE IF EXISTS delivery_earnings;

CREATE TABLE delivery_earnings (
    earning_date DATE,
    city VARCHAR(50),
    daily_revenue INT
);

INSERT INTO delivery_earnings VALUES 
('2026-11-01', 'Genoa', 450),
('2026-11-02', 'Genoa', 620),
('2026-11-03', 'Genoa', 380),
('2026-11-04', 'Genoa', 750),
('2026-11-05', 'Genoa', 510);
SELECT
    earning_date,
    daily_revenue,
    SUM(daily_revenue) OVER( ORDER BY earning_date ROWS BETWEEN 
    UNBOUNDED PRECEDING AND CURRENT ROW) AS sum
FROM delivery_earnings;
