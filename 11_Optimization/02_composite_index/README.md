# 🚀 Database Optimization: Composite Indexes

## 🎯 Overview
This section covers advanced indexing strategies using **Composite Indexes (Multi-column Indexes)**. It demonstrates how to optimize queries that filter data based on multiple conditions simultaneously.

## 💼 Business Scenario & Reports
* **Problem:** Support agents frequently filter customer orders using multiple criteria (e.g., finding orders for a specific customer with a specific delivery status). A single-column index cannot optimize multi-column filters effectively.
* **Solution:** Created a composite index on `orders(customer_id, order_status)` to accelerate filtered searches involving multiple columns.

## 🛠️ Key Concepts & SQL Features
* **Composite Indexing:** Indexing multiple columns in a specific order to serve queries filtering by combinations of those columns.
* **Column Order Significance:** The leftmost column (`customer_id`) acts as the primary sorting key, making the index highly efficient for queries matching the prefix order.
* **`CREATE INDEX` Syntax for Multiple Columns:**
  ```sql
  CREATE INDEX idx_customer_status 
  ON orders (customer_id, order_status);