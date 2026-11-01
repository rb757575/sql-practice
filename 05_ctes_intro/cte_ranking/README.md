# 🏆 Advanced CTEs with Window Functions (Ranking)

## 🎯 Overview
This final exercise explores the integration of **Common Table Expressions (CTEs)** with **Window Functions** to solve complex ranking and top-N business problems in SQL.

## 💼 Business Scenario
Management requested a report to identify the highest-earning employee within **each individual department**. 

## 🛠️ Key Concepts & SQL Features
* **Window Functions:** Utilizing `ROW_NUMBER()` combined with `OVER()` to assign sequential integer ranks to rows within a partition.
* **Partitioning:** Using `PARTITION BY department` to reset the ranking counter for each separate department group.
* **Ordering within Windows:** Applying `ORDER BY salary DESC` to prioritize the highest salaries within each partition.
* **Filtering CTE Results:** Querying the virtual table produced by the CTE to filter specifically for rows where `salary_rank = 1`.

## 📁 File Structure
* `03_cte_ranking.sql`: Contains the table setup, sample insertion, window function ranking inside a CTE, and final filtering query.