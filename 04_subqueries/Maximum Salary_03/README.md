# 📊 Finding Employees with Maximum Salary Using Subqueries

## 🎯 Overview
This project demonstrates the practical application of SQL subqueries combined with aggregate functions to retrieve specific records based on the highest aggregate value in the dataset.

## 🛠️ Concepts & Functions Used
* **Subqueries:** Nesting a `SELECT` statement inside the `WHERE` clause.
* **Aggregation:** Using the `MAX()` function inside a subquery to calculate the upper threshold dynamically.
* **Comparative Filtering:** Matching column values against scalar subquery results (`salary = (SELECT MAX(...) FROM ...)`) to pinpoint top-tier earners.

## 📁 File Structure
* `Maximum Salary.sql`: Contains the complete script for table creation, sample data insertion, and the subquery filtering the employee with the maximum salary in the company.