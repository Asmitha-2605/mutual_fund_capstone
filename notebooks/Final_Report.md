# Bluestock Mutual Fund Analytics Capstone Project

## 1. Executive Summary
The Bluestock Mutual Fund Analytics Capstone Project was developed to perform end-to-end analysis of the Indian mutual fund industry using data engineering, analytics, visualization, and risk assessment techniques.

The project involved collecting and processing multiple mutual fund datasets, designing a structured SQLite database, performing exploratory data analysis, computing advanced performance metrics, and developing an interactive Power BI dashboard.

Key analyses included NAV trends, AUM growth, SIP inflows, investor demographics, fund performance evaluation, risk-adjusted return measures, Value at Risk (VaR), Conditional Value at Risk (CVaR), Sharpe Ratio analysis, investor cohort analysis, SIP continuity assessment, and portfolio concentration measurement using the Herfindahl-Hirschman Index (HHI).

An interactive four-page Power BI dashboard was created to visualize industry trends, fund performance, investor behavior, and SIP market dynamics. Advanced analytics techniques were applied to generate actionable insights and identify investment patterns.

The final solution demonstrates the complete analytics lifecycle, including data ingestion, data cleaning, database design, exploratory analysis, performance analytics, dashboard development, and advanced risk modeling.


## 2. Project Objectives
1. Build a complete mutual fund analytics platform using Python, SQL, and Power BI.

2. Design an ETL pipeline for ingestion and transformation of mutual fund datasets.

3. Create a relational database structure for efficient storage and analysis.

4. Perform exploratory data analysis to identify industry trends and investor behavior.

5. Evaluate fund performance using CAGR, Sharpe Ratio, Sortino Ratio, Alpha, Beta, and Maximum Drawdown.

6. Develop an interactive dashboard for business users and investors.

7. Apply advanced risk analytics including VaR, CVaR, Rolling Sharpe Ratio, and HHI concentration analysis.

8. Generate actionable investment insights and recommendations from data.


## 3. Data Sources
The project uses ten mutual fund datasets covering scheme information, NAV history, AUM statistics, SIP inflows, investor transactions, scheme performance, benchmark indices, portfolio holdings, and investor demographics.

Primary datasets include:

* Fund Master Dataset
* NAV History Dataset
* Investor Transactions Dataset
* Scheme Performance Dataset
* AUM History Dataset
* SIP Inflows Dataset
* Portfolio Holdings Dataset
* Benchmark Index Dataset
* Investor Demographics Dataset
* Market Trends Dataset

Additional live NAV data was collected using the MFAPI service for selected mutual fund schemes.


## 4. ETL Design and Data Pipeline
The ETL pipeline was implemented using Python and Pandas.

Extraction:

* Imported all raw CSV files.
* Retrieved live NAV data from MFAPI.

Transformation:

* Standardized column names and data types.
* Converted date fields to datetime format.
* Removed duplicate records.
* Validated mutual fund scheme codes.
* Cleaned transaction and NAV datasets.

Loading:

* Loaded processed datasets into SQLite database.
* Created dimensional and fact tables.
* Established relationships using AMFI scheme codes and date dimensions.

The pipeline ensured consistent, reliable, and analysis-ready datasets.


## 5. Data Cleaning and Quality Checks
Several data quality checks were performed:

* Missing NAV values were forward-filled.
* Duplicate NAV records were removed.
* Invalid transaction amounts were identified and corrected.
* Transaction types were standardized into SIP, Lumpsum, and Redemption categories.
* Date fields were converted into a common datetime format.
* KYC status values were validated.
* Expense ratios and performance metrics were checked for anomalies.
* AMFI scheme codes were validated across all datasets.

These steps improved data consistency and analytical accuracy.


## 6. Database Design (SQLite)
A star-schema based SQLite database was designed to support analytics workloads.

Dimension Tables:

* dim_fund
* dim_date

Fact Tables:

* fact_nav
* fact_transactions
* fact_performance
* fact_aum

Primary and foreign keys were established using AMFI scheme codes and date identifiers.

The database enabled efficient querying and supported dashboard development and advanced analytics calculations.


## 7. Exploratory Data Analysis
The Exploratory Data Analysis (EDA) phase focused on understanding mutual fund industry trends, investor behavior, and fund characteristics.

Key analyses performed:

* Daily NAV trend analysis for all 40 schemes.
* AUM growth comparison across fund houses.
* Monthly SIP inflow trend analysis from 2022–2025.
* Category-wise inflow heatmap.
* Investor demographic analysis by age group and gender.
* Geographic analysis by state and city tier.
* Folio count growth trend analysis.
* NAV return correlation analysis.
* Sector allocation distribution across equity funds.

More than 15 visualizations were created using Plotly, Seaborn, and Matplotlib to identify patterns and support business insights.

Key EDA Findings:

* SIP inflows reached an all-time high during 2025.
* Equity-oriented schemes attracted the largest share of investments.
* Younger investors contributed significantly through SIP investments.
* Fund house concentration remains high among leading AMCs.
* Strong positive correlations exist among large-cap equity funds.


## 8. Fund Performance Analytics
Fund performance was evaluated using multiple risk and return metrics.

Metrics Computed:

* Daily Returns
* CAGR (1 Year, 3 Year, and 5 Year)
* Sharpe Ratio
* Sortino Ratio
* Alpha
* Beta
* Maximum Drawdown
* Fund Scorecard

A composite scorecard was created to rank all mutual fund schemes using weighted performance indicators.

Major Findings:

* Funds with higher Sharpe Ratios delivered superior risk-adjusted returns.
* Certain schemes generated positive alpha against benchmark indices.
* Maximum Drawdown analysis identified periods of significant downside risk.
* Top-ranked funds consistently outperformed benchmarks over the analysis period.


## 9. Power BI Dashboard
An interactive four-page Power BI dashboard was developed.

Page 1 – Industry Overview:

* Total AUM KPI
* SIP Inflow KPI
* Folio Count KPI
* Scheme Count KPI
* Industry AUM Trend
* AUM by AMC

Page 2 – Fund Performance:

* Risk vs Return Scatter Plot
* Fund Scorecard
* NAV vs Benchmark Analysis
* Interactive Slicers

Page 3 – Investor Analytics:

* State-wise Investment Analysis
* Transaction Type Distribution
* Age Group Analysis
* Monthly Transaction Trends

Page 4 – SIP and Market Trends:

* SIP Inflows vs Market Performance
* Category Inflow Heatmap
* Top Categories by Inflows

The dashboard provides interactive filtering, drill-through capabilities, and business-focused insights.


## 10. Advanced Analytics and Risk Metrics
Advanced analytics techniques were applied to assess risk, investor behavior, and portfolio concentration.

Analyses Completed:

* Historical Value at Risk (VaR)
* Conditional Value at Risk (CVaR)
* Rolling 90-Day Sharpe Ratio
* Investor Cohort Analysis
* SIP Continuity Analysis
* Fund Recommendation Engine
* Herfindahl-Hirschman Index (HHI)

Major Findings:

* High-risk funds exhibited significantly larger downside exposure.
* Investor cohorts entering in 2024 contributed the largest investment volume.
* A significant number of investors were classified as At-Risk due to irregular SIP patterns.
* Portfolio concentration varied considerably across equity schemes.
* Risk-adjusted performance metrics helped identify stronger investment opportunities.

## 11. Key Findings
1. SIP inflows reached record levels during the analysis period, indicating strong retail investor participation.

2. Equity mutual funds dominated investor preference and AUM growth.

3. Top-performing funds consistently achieved higher Sharpe Ratios and positive alpha values.

4. Investor cohorts entering during 2024 contributed the highest total investment amount.

5. SIP continuity analysis revealed a large number of investors with irregular investment patterns.

6. HHI concentration analysis showed significant differences in portfolio diversification among equity funds.

7. Power BI dashboards enabled interactive analysis of industry, fund, and investor trends.


## 12. Limitations
* Analysis was limited to the provided mutual fund datasets.
* Certain market factors and macroeconomic indicators were not included.
* Historical performance does not guarantee future returns.
* HHI analysis was dependent on available portfolio holdings data.
* Live market prices were not incorporated into all calculations.


## 13. Recommendations
1. Encourage investors to maintain SIP continuity to improve long-term wealth creation.

2. Diversify investments across sectors and fund categories to reduce concentration risk.

3. Monitor downside risk using VaR and CVaR metrics.

4. Use risk-adjusted performance measures such as Sharpe Ratio during fund selection.

5. Continuously update dashboards with fresh NAV and transaction data to support decision-making.


## 14. Conclusion
The Bluestock Mutual Fund Analytics Capstone successfully implemented a complete analytics pipeline covering data ingestion, data engineering, database design, exploratory analysis, performance evaluation, dashboard development, and advanced risk analytics.

The project demonstrates how modern data analytics tools such as Python, SQLite, Power BI, and statistical techniques can be combined to generate actionable insights from mutual fund data. The final solution provides valuable support for investors, analysts, and business stakeholders through data-driven decision making.
