# Data Dictionary

## 01_fund_master
| Column | Type | Description |
|----------|----------|----------|
| amfi_code | Integer | Unique scheme code |
| scheme_name | Text | Mutual fund scheme name |
| fund_house | Text | Asset management company |
| category | Text | Fund category |
| sub_category | Text | Fund sub-category |
| risk_grade | Text | Risk classification |

## 02_nav_history
| Column | Type | Description |
|----------|----------|----------|
| amfi_code | Integer | Scheme code |
| date | Date | NAV date |
| nav | Float | Net Asset Value |

## 03_aum_by_fund_house
| Column | Type | Description |
|----------|----------|----------|
| fund_house | Text | AMC name |
| aum | Float | Assets Under Management |

## 04_monthly_sip_inflows
| Column | Type | Description |
|----------|----------|----------|
| month | Date | Reporting month |
| sip_amount | Float | SIP inflow amount |

## 05_category_inflows
| Column | Type | Description |
|----------|----------|----------|
| category | Text | Fund category |
| inflow_amount | Float | Net inflow |

## 06_industry_folio_count
| Column | Type | Description |
|----------|----------|----------|
| category | Text | Fund category |
| folio_count | Integer | Investor folios |

## 07_scheme_performance
| Column | Type | Description |
|----------|----------|----------|
| amfi_code | Integer | Scheme code |
| return_1y | Float | One year return |
| return_3y | Float | Three year return |
| return_5y | Float | Five year return |
| expense_ratio | Float | Fund expense ratio |

## 08_investor_transactions
| Column | Type | Description |
|----------|----------|----------|
| investor_id | Integer | Investor ID |
| amfi_code | Integer | Scheme code |
| transaction_date | Date | Transaction date |
| transaction_type | Text | SIP/Lumpsum/Redemption |
| amount | Float | Transaction amount |

## 09_portfolio_holdings
| Column | Type | Description |
|----------|----------|----------|
| amfi_code | Integer | Scheme code |
| stock_name | Text | Security held |
| weightage | Float | Portfolio weight |

## 10_benchmark_indices
| Column | Type | Description |
|----------|----------|----------|
| date | Date | Benchmark date |
| index_name | Text | Index name |
| close_value | Float | Closing value |