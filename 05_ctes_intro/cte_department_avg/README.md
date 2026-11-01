# 📊 Advanced CTEs with Department-Level Window Functions

## 🎯 Overview
This advanced exercise combines **Common Table Expressions (CTEs)** with **analytical window functions** to perform group-level comparisons against individual row values.

## 💼 Business Scenario
The HR department requested a report to identify all employees whose individual salary is strictly greater than the **average salary of their respective department**.

## 🛠️ Key Concepts & SQL Features
* **Window Functions with Partitioning:** Utilizing `AVG(salary) OVER(PARTITION BY department)` to calculate the average salary for each department group independently while retaining row-level details.
* **Virtual Table Encapsulation:** Storing the calculated department averages alongside employee records in a CTE (`average_department`).
* **Conditional Filtering:** Querying the CTE to filter rows where the individual `salary` exceeds the calculated group `mean`.

## 📁 File Structure
* `04_cte_department_avg.sql`: Contains the table definition, sample data, window function aggregation inside a CTE, and the comparative filtering query.