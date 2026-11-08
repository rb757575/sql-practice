# 🚀 Database Optimization: Single-Column Indexing

## 🎯 Overview
This section introduces SQL query performance tuning using single-column indexes. It demonstrates how indexing turns expensive full table scans into fast index lookups for high-frequency queries.

## 💼 Business Scenario
* **Problem:** Support agents frequently search orders by `order_id`. On millions of rows, filtering without an index triggers full table scans, causing slow UI load times.
* **Solution:** Applied a single-column index on `orders(order_id)` to optimize search queries down to $O(\log N)$ lookup efficiency.

## 🛠️ Key Concepts & SQL Features
* **Full Table Scan vs. Index Lookup:**
  * Without Index: Evaluates every row sequentially from start to end.
  * With Index: Uses a search tree structure to locate records directly.
* **`CREATE INDEX` Syntax:**
  ```sql
  CREATE INDEX idx_orders_order_id ON orders(order_id);