# Product Performance Analysis (SQL)

## Scenario
This scenario analyzes sales data to aggregate total items sold, total revenue, and performance levels across different product categories.

## SQL Query
```sql
SELECT 
    UPPER(TRIM(category)) AS CATEGORY,
    SUM(quantity) AS TOTAL_ITEMS_SOLD,
    SUM(unit_price * quantity) AS TOTAL_REVENUE,
    CASE
        WHEN SUM(unit_price * quantity) > 1000 THEN 'TOP SELLER'
        WHEN SUM(unit_price * quantity) >= 500 THEN 'MODERATE'
        ELSE 'LOW PERFORMANCE'
    END AS PERFORMANCE_LEVEL
FROM sales
GROUP BY UPPER(TRIM(category))
ORDER BY TOTAL_REVENUE DESC;