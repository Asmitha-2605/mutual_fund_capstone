import pandas as pd

# Load cleaned fund master file
fund_master = pd.read_csv("data/processed/01_fund_master_clean.csv")

print("Available Risk Categories:")
print(fund_master["risk_category"].unique())

risk = input("\nEnter Risk Appetite (Low/Moderate/High): ")

filtered = fund_master[
    fund_master["risk_category"]
    .str.contains(risk, case=False, na=False)
]

recommendations = filtered[
    ["amfi_code", "scheme_name", "fund_house", "risk_category"]
].head(3)

print("\nTop 3 Recommended Funds:")
print(recommendations)