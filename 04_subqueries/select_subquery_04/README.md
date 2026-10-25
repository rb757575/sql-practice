# 📊 Displaying Maximum Company Salary via SELECT Subquery

## 🎯 Overview
This project demonstrates how to use a scalar subquery within the `SELECT` clause to compute and display dynamic aggregate values (such as the company's maximum salary) alongside every individual record.

## 🛠️ Concepts & Functions Used
* **Subqueries in `SELECT`:** Embedding a `SELECT` statement directly in the column list to generate dynamic auxiliary columns.
* **Aggregation:** Using the `MAX()` function to find the upper bound of salaries across the entire dataset.
* **Column Aliasing:** Utilizing `AS` to assign a clean, descriptive name (`max_company_salary`) to the subquery output column.

## 📁 File Structure
* `select_subquery.sql`: Contains table creation, sample data insertion, and the query displaying individual employee details alongside the global maximum salary.