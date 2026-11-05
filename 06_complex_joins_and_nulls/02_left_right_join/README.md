# 🛒 Customers & Orders: Understanding LEFT JOINs

## 🎯 Overview
This section focuses on mastering the conceptual differences of **`LEFT JOIN`** by exploring relational mappings between customer records and sales orders, handling missing matches, and managing unmatched foreign keys in SQLite.

## 💼 Business Scenarios & Reports
1. **Comprehensive Customer & Order History (`01_left_vs_right_join.sql`):**
   * **Objective:** Generate a complete list of all customers alongside their purchase amounts.
   * **Handling Anomalies:** Utilized a `LEFT JOIN` with the `customers` table on the left, ensuring that customers who haven't placed any orders (such as Reza and Mona) are still retained in the report with a `NULL` value for their order amount[cite: 3].

2. **Order-Centric Report with Unmatched Customers (`02_left_vs_right_join.sql`):**
   * **Objective:** Retrieve all orders, including those with invalid or unassigned customer IDs.
   * **Implementation:** Placed the `orders` table on the left and performed a `LEFT JOIN` with `customers`, preserving all order records (such as order ID 104 with an unmatched `customer_id = 99`) while displaying `NULL` for the missing customer name[cite: 4].

## 🛠️ Key Concepts & SQL Features
* **`LEFT JOIN` Logic:** Preserving the entirety of the left-hand table while appending matching attributes from the right-hand table, resulting in `NULL` for unmatched rows.
* **Database Perspective on `RIGHT JOIN`:** Demonstrating how SQLite implements right-relational logic by structurally swapping table positions rather than using an explicit `RIGHT JOIN` keyword.