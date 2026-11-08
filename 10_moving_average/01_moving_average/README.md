# 📈 Time-Series Analysis: Moving Averages & Custom Window Frames

## 🎯 Overview
This section explores advanced time-series analysis techniques in SQLite, demonstrating how to compute rolling averages (moving averages) using custom row-framing specifications to smooth out short-term fluctuations and highlight longer-term trends.

## 💼 Business Scenarios & Reports
1. **3-Month Moving Average Revenue (`05_moving_average.sql`):**
   * **Objective:** Help leadership analyze revenue trends and smooth out short-term monthly volatility by tracking a rolling 3-month average.
   * **Implementation:** Combined the `AVG()` aggregate function with chronological sorting (`ORDER BY month_id`) and a custom frame clause (`ROWS BETWEEN 2 PRECEDING AND CURRENT ROW`) to dynamically average the current month alongside the preceding two months.

## 🛠️ Key Concepts & SQL Features
* **Moving Averages:** Rolling metric calculations over a specified window of preceding and current rows.
* **Custom Row Framing (`ROWS BETWEEN n PRECEDING AND CURRENT ROW`):** 
  * Controls the exact subset of rows included in the window calculation relative to the current row, enabling precise rolling windows (e.g., 3-month, 6-month, or custom-period evaluations).