# 🛍️ Product Catalog & Ranking: Advanced Window Functions

## 🎯 Overview
This section demonstrates the practical application of window ranking functions (`ROW_NUMBER`, `RANK`, and `DENSE_RANK`) on a product catalog dataset, highlighting how each function handles tied values within specific product categories.

## 💼 Business Scenarios & Reports
1. **Product Price Ranking by Category (`02_ranking_products.sql`):**
   * **Objective:** Rank products in descending order of their price within each category.
   * **Implementation:** Applied `PARTITION BY category` alongside `ORDER BY price DESC` to compare how sequential numbers, gapped ranks, and dense ranks process tied product prices (such as 'Tablet X' and 'Smart Watch' in Electronics).

## 🛠️ Key Concepts & SQL Features
* **`PARTITION BY` with Window Functions:** Segmenting aggregate and ranking calculations across distinct categories (e.g., 'Electronics' vs. 'Sports').
* **Handling Ties:** Contrasting `ROW_NUMBER` (unique deterministic ordering), `RANK` (skipping sequence numbers after ties), and `DENSE_RANK` (maintaining consecutive sequence numbers without gaps).