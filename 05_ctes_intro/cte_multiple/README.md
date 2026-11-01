# 🧩 Chained Common Table Expressions (Multiple CTEs)

## 🎯 Overview
This exercise demonstrates how to chain **multiple Common Table Expressions (CTEs)** sequentially using a single `WITH` clause in SQL. It showcases how complex multi-step data filtering can be broken down into clean, readable logical blocks.

## 💼 Business Scenario
The management required a report listing employees specifically from the **IT department** whose salaries are strictly higher than the **company-wide average salary**. 

## 🛠️ Key Concepts & SQL Features
* **Chained CTEs:** Declaring multiple virtual tables by using a single `WITH` keyword, separated by commas (`,`).
* **CTE Dependencies:** Demonstrating how a subsequent CTE (`IT_highearner`) can directly reference and filter the output of a preceding CTE (`Aboveaverage`).
* **Clean Aggregations:** Encapsulating subqueries for aggregate calculations like `AVG(salary)` inside dedicated CTE structures.

## 📁 File Structure
* `02_multiple_ctes.sql`: Contains the complete SQL script including table schema, sample data, and the two-stage CTE filtering query.