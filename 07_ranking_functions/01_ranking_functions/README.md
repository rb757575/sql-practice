# 📊 Advanced Window Functions: Ranking & Partitioning

## 🎯 Overview
This section explores advanced analytical ranking functions in SQLite, demonstrating how to compute ordered metrics within partitioned datasets using **`ROW_NUMBER`**, **`RANK`**, and **`DENSE_RANK`**.

## 💼 Business Scenarios & Reports
1. **Employee Salary Ranking by Department (`01_ranking_functions.sql`):**
   * **Objective:** Rank employees based on their salaries within their respective departments.
   * **Implementation:** Utilized `PARTITION BY dept_name` and `ORDER BY salary DESC` to evaluate behavioral differences among ranking mechanisms (handling ties with standard gaps vs. dense sequences).

## 🛠️ Key Concepts & SQL Features
* **`ROW_NUMBER()`:** Assigns a unique sequential integer to rows within a partition, ignoring duplicate values.
* **`RANK()`:** Assigns ranking positions with gaps left when duplicate values occur.
* **`DENSE_RANK()`:** Assigns consecutive ranking positions without gaps for tied values.