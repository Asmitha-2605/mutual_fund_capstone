-- Top 5 funds by AUM
SELECT * FROM fact_aum
ORDER BY aum DESC
LIMIT 5;

-- Average NAV
SELECT AVG(nav) AS avg_nav
FROM fact_nav;

-- Monthly NAV trend
SELECT strftime('%Y-%m', nav_date) AS month,
AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY month;

-- Funds with expense ratio below 1%
SELECT *
FROM fact_performance
WHERE expense_ratio < 1;

-- Average return by fund
SELECT amfi_code,
AVG(return_1y) AS avg_return
FROM fact_performance
GROUP BY amfi_code;

-- Total transactions
SELECT transaction_type,
COUNT(*) AS total
FROM fact_transactions
GROUP BY transaction_type;

-- Total investment amount
SELECT SUM(amount)
FROM fact_transactions;

-- Highest NAV
SELECT *
FROM fact_nav
ORDER BY nav DESC
LIMIT 1;

-- Lowest NAV
SELECT *
FROM fact_nav
ORDER BY nav ASC
LIMIT 1;

-- Number of funds
SELECT COUNT(*)
FROM dim_fund;