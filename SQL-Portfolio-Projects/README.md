# 📊 Customer Loyalty & Sales Analytics (SQL)

## 📌 Overview
This project focuses on analyzing customer purchase behavior and segmenting users based on their order history and total spending using **SQL / SQLite**. 

The goal is to clean raw order data, aggregate purchasing metrics, identify high-value "Loyal" customers, and rank customers by their total contribution.

---

## 🛠️ Key SQL Features & Techniques Used
- **Data Cleaning:** `TRIM()` and `UPPER()` for standardizing customer names.
- **Aggregation:** `COUNT()`, `SUM()`, and `MAX()` to evaluate customer history.
- **Conditional Logic:** `CASE WHEN` statements to segment customers into `LOYAL` and `REGULAR`.
- **Window Functions:** `DENSE_RANK() OVER (...)` to rank customers by total revenue generated.

---

## 📊 SQL Query Structure
The main query creates a temporary structure and evaluates customer behavior:

```sql
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