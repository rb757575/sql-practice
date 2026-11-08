# 📈 System Metrics Analysis: Moving Averages & Window Framing

## 🎯 Overview
This section focuses on using window aggregates to perform time-series smoothing using **Moving Averages**, demonstrating how to define dynamic window frames to mitigate daily data volatility.

## 💼 Business Scenarios & Reports
1. **3-Day Moving Average of Active Users (`05_system_metrics_moving_avg.sql`):**
   * **Objective:** Smooth out daily spikes and dips in active user metrics to provide leadership with a clearer view of underlying user growth trends.
   * **Implementation:** Combined the `AVG()` function with chronological ordering (`ORDER BY metric_day`) and an explicit frame boundary (`ROWS BETWEEN 2 PRECEDING AND CURRENT ROW`) to calculate a rolling 3-day average (the current day plus the prior 2 days).

## 🛠️ Key Concepts & SQL Features
* **Rolling/Moving Averages:** Evaluating moving metric trends across fixed row offsets.
* **Window Frame Specification (`ROWS BETWEEN n PRECEDING AND CURRENT ROW`):** 
  * `2 PRECEDING AND CURRENT ROW`: Defines a 3-row evaluation frame (current row + 2 prior rows).
  * Prevents over-counting by ensuring exact period-length boundaries for analytical accuracy.