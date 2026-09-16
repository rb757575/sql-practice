# Customer Recency Analysis & SQL Window Functions

## 📌 Project Overview
This repository contains analytical SQL queries focused on **Customer Recency Analysis** and **Customer Segmentation**. By combining SQL String Functions (`UPPER`, `TRIM`), Conditional Aggregation (`CASE WHEN`), Window Functions (`DENSE_RANK`), and grouping (`GROUP BY`), this project demonstrates how to analyze customer behavior and classify activity levels.

---

## 🛠️ Key Analytical Goals
1. **Data Cleaning:** Standardize customer names by removing whitespace and converting to uppercase (`UPPER(TRIM(customer_name))`).
2. **Recency Tracking:** Determine the latest purchase date (`MAX(order_date)`) for each customer.
3. **Total Spend Calculation:** Aggregate individual order amounts (`SUM(amount)`).
4. **Conditional Status Segmentation:**
   - **`ACTIVE`**: Customers with their last order on or after `2026-08-01`.
   - **`INACTIVE`**: Customers whose last order was prior to `2026-08-01`.
5. **Customer Ranking:** Rank customers based on total spend using `DENSE_RANK() OVER (ORDER BY SUM(amount) DESC)`.

---

## 💻 SQL Query

```sql
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