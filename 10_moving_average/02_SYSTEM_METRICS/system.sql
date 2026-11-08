DROP TABLE IF EXISTS system_metrics;

CREATE TABLE system_metrics (
    metric_day INT,
    active_users INT
);

INSERT INTO system_metrics VALUES 
(1, 1200),
(2, 1350),
(3, 1100),
(4, 1600),
(5, 1550),
(6, 1800);
SELECT
    active_users,
    metric_day,
    AVG(active_users) OVER (ORDER BY metric_day ROWS BETWEEN
     2 PRECEDING AND CURRENT ROW) AS average
FROM system_metrics;