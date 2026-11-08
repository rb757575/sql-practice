# 📦 Delivery Earnings Analysis: Running Totals

## 🎯 Overview
This section covers practical business applications of window aggregate functions in SQLite, specifically demonstrating how to compute cumulative running totals for daily delivery platform earnings.

## 💼 Business Scenarios & Reports
1. **Daily & Cumulative Delivery Revenue (`delivery_running_totals.sql`):**
   * **Objective:** Provide leadership and operations with a real-time tracking mechanism to monitor daily revenue alongside cumulative performance from the start of the month.
   * **Implementation:** Applied the `SUM()` aggregate function with chronological sorting (`ORDER BY earning_date`) and explicit frame specification (`ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`) on daily city earnings.

## 🛠️ Key Concepts & SQL Features
* **Running Totals in Operations:** Dynamic accumulation of daily metrics without requiring complex self-joins.
* **Frame Boundaries (`UNBOUNDED PRECEDING AND CURRENT ROW`):** Ensuring accurate summation from the absolute beginning of the time period up to the current daily record.