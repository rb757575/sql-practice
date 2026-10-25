# 📊 Correlated Subquery: Department Salary Comparison

## 🎯 Overview
This project demonstrates the implementation of a **Correlated Subquery** in SQL, which evaluates conditions row-by-row by referencing the outer query's data.

## 🛠️ Concepts & Functions Used
* **Correlated Subqueries:** Nesting a subquery that depends on values from the outer query (`e1.department = e2.department`).
* **Table Aliasing:** Using aliases (`e1` and `e2`) to distinguish between the outer and inner table instances.
* **Conditional Aggregation:** Dynamically calculating the average salary per department to filter individuals earning above their department's average.

## 📁 File Structure
* `correlated_subquery.sql`: Contains table creation, sample data insertion, and the correlated subquery filtering employees against their respective department averages.