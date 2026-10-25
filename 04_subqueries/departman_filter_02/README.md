# 📊 Advanced Department Salary Filtering with Subqueries

## 🎯 Overview
This project demonstrates the use of SQL subqueries with conditional filtering to compare employee salaries against specific department averages.

## 🛠️ Concepts & Functions Used
* **Subqueries:** Nesting `SELECT` statements inside the `WHERE` clause.
* **Aggregation:** `AVG()` function filtered by specific departments.
* **Logical Operators:** Combining standard filtering (`WHERE ...`) with comparative subqueries (`AND salary > (...)`).

## 📁 File Structure
* `department_filter.sql`: Contains table creation, sample data insertion, and the main subquery filtering employees in the IT department against the HR average salary.