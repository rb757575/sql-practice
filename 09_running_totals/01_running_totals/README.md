# 📊 Advanced Window Functions: Running Totals & Frame Specifications

## 🎯 Overview
This section explores advanced cumulative calculations using window aggregates in SQLite, demonstrating how to compute running totals and understand explicit row-framing clauses.

## 💼 Business Scenarios & Reports
1. **Monthly Revenue Running Total (`04_running_totals.sql`):**
   * **Objective:** Track cumulative revenue growth month-by-month to assist leadership in target tracking and financial evaluation.
   * **Implementation:** Utilized the `SUM()` aggregate function combined with explicit frame boundaries (`ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`) ordered chronologically by `month_id`.

## 🛠️ Key Concepts & SQL Features
* **Running Totals:** Accumulating metric values across ordered partitions or result sets dynamically without complex self-joins.
* **Frame Specification (`ROWS BETWEEN ... AND ...`):**
  * **`UNBOUNDED PRECEDING`:** Refers to the very first row of the partition or result set.
  * **`CURRENT ROW`:** Refers to the row currently being evaluated.
  * **Cumulative Logic:** Instructs the database engine to sum all rows starting from the absolute beginning up to the current row.