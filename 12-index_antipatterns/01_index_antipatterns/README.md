# ⚠️ SQL Anti-patterns: What Kills Your Indexes?

## 🎯 Overview
This module explores common query anti-patterns that unintentionally bypass indexes, leading to performance bottlenecks like Full Table Scans.

## 🚫 The Anti-pattern: Functions on Indexed Columns
* **The Mistake:** Applying SQL functions (such as `LOWER()`, `UPPER()`, `TRIM()`, or mathematical operations) directly on an indexed column inside the `WHERE` clause.
* **Why it fails:** The database index is structured based on the raw stored values. Transforming the column value on-the-fly forces the database engine to evaluate every single row, rendering the index useless.

## 💡 Best Practice / Solution
* Keep the indexed column **clean and unmanipulated** on the left side of the comparison operator.
* Standardize data formats (e.g., lowercasing emails) at the **application layer or during ingestion**, rather than inside the query `WHERE` clause.