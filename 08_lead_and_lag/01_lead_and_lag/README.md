# 📈 Time-Series Analysis: LAG & LEAD Window Functions

## 🎯 Overview
This section explores analytical window functions used for time-series and sequential data analysis, focusing on **`LAG`** to access preceding rows and compare temporal metrics.

## 💼 Business Scenarios & Reports
1. **Monthly Revenue & Growth Analysis (`03_lead_and_lag.sql`):**
   * **Objective:** Track revenue changes across sequential calendar months.
   * **Implementation:** Introduced a chronological `month_id` alongside `ORDER BY month_id` within the `LAG` window function to accurately fetch the prior month's revenue, avoiding lexical or revenue-based sorting misalignments.

## 🛠️ Key Concepts & SQL Features
* **`LAG(column, offset)`:** Accesses data from a previous row at a specified offset relative to the current row within the partition or result set.
* **Chronological Ordering:** Emphasizing the importance of sorting by a proper sequence identifier (like `month_id`) rather than alphabetical names or metric values when performing temporal row comparisons.