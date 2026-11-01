# 🧩 Introduction to Common Table Expressions (CTEs)

## 🎯 Overview
This project introduces **Common Table Expressions (CTEs)** in SQL using the `WITH` clause. CTEs allow breaking down complex queries into readable, reusable, and modular virtual result sets.

## 🛠️ Concepts & Syntax Used
* **`WITH` Clause:** Defines a temporary result set (or virtual table) that can be referenced within the main `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement.
* **Modular Querying:** Separating aggregate calculations (such as computing the company average salary) from the primary filtering logic to improve code readability and maintainability.

## 📁 File Structure
* `01_cte_basics.sql`: Contains table creation, sample employee data insertion, and the introductory implementation of a CTE to filter employees earning above the company average.