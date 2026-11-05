# 🔗 Complex Joins & NULLs Management

## 🎯 Overview
This section explores advanced relational database operations using **`LEFT JOIN`** and handling missing data or unmatched records with **`IS NULL`** in SQLite.

## 💼 Business Scenarios & Reports
1. **Comprehensive Employee & Department Mapping (`01_left_right_join.sql`):**
   * **Objective:** Generate a complete list of all employees along with their respective departments.
   * **Handling Anomalies:** Utilized a `LEFT JOIN` to ensure that employees without a valid or matching department (e.g., Sohrab with `dept_id = 99`) are still retained in the report with a `NULL` value for the department[cite: 3].

2. **Unassigned Departments Detection (`02_empty_departments.sql`):**
   * **Objective:** Identify departments that are registered in the system but currently have no active employees assigned to them[cite: 3].
   * **Implementation:** Placed the `departments` table on the left, performed a `LEFT JOIN` with `employees`, and filtered the results using `WHERE employees.emp_name IS NULL` to isolate unassigned departments like *Marketing*[cite: 3].

## 🛠️ Key Concepts & SQL Features
* **`LEFT JOIN`:** Preserving all records from the left table while matching corresponding rows from the right table.
* **`IS NULL` Filtering:** Extracting unmatched records and isolating structural gaps in relational data.