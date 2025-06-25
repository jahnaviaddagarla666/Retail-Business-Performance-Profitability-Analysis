# Retail Performance & Profitability Analysis

## 1. Project Overview
This mini project simulates a **retail performance & profitability analysis** similar to the classic *Tableau Superstore* case.
You now have a fully-working, end-to-end example that demonstrates how to:
- Acquire / generate a transactional dataset
- Explore and aggregate profitability metrics in **Python**
- Write and document a reusable **SQL** query
- Produce ready-to-share outputs (CSV, PNG)

Everything runs offline with the files already inside the repository – no extra downloads or credentials required.

## 2. File Structure
| Path | Purpose |
|------|---------|
| `data/superstore.csv` | Synthetic 100-row transaction dataset (category, sub-category, sales, profit…) |
| `src/retail_analysis.py` | Python script that generates a profit-margin report & bar-chart |
| `sql/retail_analysis.sql` | Example SQL aggregating profit margin by Category/Sub-category |
| `output/profit_margin.csv` | Script output – table of total sales / profit / margin |
| `output/worst_margin.png` | Script output – visual of lowest profit-margin items |

## 3. Quick Start
1. Clone / download the repo (or grab individual files).
2. Ensure Python ≥ 3.8 with pandas, seaborn, matplotlib.
3. Run:
```bash
python src/retail_analysis.py
```
4. Check outputs in the `output/` folder.

Alternatively, run the SQL in any SQLite or analytical database after loading `superstore.csv`.

## 4. Analysis Logic
### Python (`src/retail_analysis.py`)
1. Load CSV and parse dates.
2. `groupby` Category + Sub-category, summing Sales & Profit.
3. Compute `Profit_Margin = Total_Profit / Total_Sales`.
4. Save full table to `output/profit_margin.csv`.
5. Plot **5 lowest-margin** sub-categories for rapid insight.

### SQL (`sql/retail_analysis.sql`)
Same KPI logic expressed declaratively – useful for BI tools or database pipelines.

## 5. Skills Demonstrated
- **Data generation & cleaning** – creating realistic sample transactions.
- **Python analytics** – pandas, summary aggregation, Seaborn visualization.
- **SQL proficiency** – writing clear, commented, production-ready queries.
- **Project structuring** – logical folders (`data/`, `src/`, `output/`, `sql/`).
- **Reproducible workflow** – single script reproduces all results.

## 6. What I Learned
- How to translate business questions ("which items drain profit?") into quantifiable metrics.
- Best practices for separating raw data, code, and results.
- Expressing the same analysis in both **Python** and **SQL** for versatility.
- Rapid visualization to spotlight outliers & negative margins.
- Importance of defensive coding (e.g., handling divide-by-zero, small datasets).

## 7. Next Steps
- Replace the synthetic CSV with real retail data to test at scale.
- Expand KPIs: inventory turns, seasonality, customer segments.
- Load results into Tableau / Power BI for interactive dashboards.
