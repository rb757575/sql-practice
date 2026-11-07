# 📈 Time-Series Analysis: LEAD & LAG Window Functions

## 🎯 Overview
This section covers advanced analytical window functions designed for sequential and time-series data analysis, demonstrating how to use **`LEAD`** and **`LAG`** to inspect upcoming and preceding rows.

## 💼 Business Scenarios & Reports
1. **Monthly Revenue & Future Tracking (`03_lead_and_lag.sql`):**
   * **Objective:** Track revenue changes across sequential calendar months by inspecting both past and future intervals.
   * **Implementation:** Utilized chronological sorting via `ORDER BY month_id` inside `LAG` and `LEAD` window functions to cleanly fetch preceding and succeeding month revenues without self-joins.

## 🛠️ Key Concepts & SQL Features
* **`LAG(column, offset)`:** Retrieves data from a previous row relative to the current position.
* **`LEAD(column, offset)`:** Retrieves data from a subsequent row relative to the current position (returning `NULL` for the final rows where no future record exists).
* **Sequential Ordering:** Ensuring precise temporal evaluation using unique sequence keys (like `month_id`).