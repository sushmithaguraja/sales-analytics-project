import pandas as pd

# Load data
df = pd.read_csv('../data/raw_sales.csv')

# Clean data
df.dropna(inplace=True)

# Convert date
df['Order Date'] = pd.to_datetime(df['Order Date'])

# Create new columns
df['Year'] = df['Order Date'].dt.year
df['Month'] = df['Order Date'].dt.month

# Save cleaned data
df.to_csv('../data/clean_sales.csv', index=False)

print("Data cleaned!")
