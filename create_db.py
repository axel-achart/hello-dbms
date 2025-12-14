import sqlite3
import csv

# Create database
conn = sqlite3.connect('CarbonFootprint.db')
cursor = conn.cursor()

# Create Country table
cursor.execute('''
CREATE TABLE IF NOT EXISTS Country (
    Country TEXT PRIMARY KEY,
    Coal REAL,
    Gas REAL,
    Oil REAL,
    Hydro REAL,
    Renewable REAL,
    Nuclear REAL
)
''')

# Create World table
cursor.execute('''
CREATE TABLE IF NOT EXISTS World (
    Region TEXT PRIMARY KEY,
    Coal REAL,
    Gas REAL,
    Oil REAL,
    Hydro REAL,
    Renewable REAL,
    Nuclear REAL
)
''')

# Read CSV
with open('data/carbon-footprint-data.csv', 'r', encoding='latin-1') as f:
    reader = csv.reader(f, delimiter=';')
    next(reader)  # Skip header
    for row in reader:
        if len(row) == 7:
            country, coal, gas, oil, hydro, renewable, nuclear = row
            # Convert to float
            try:
                coal = float(coal)
                gas = float(gas)
                oil = float(oil)
                hydro = float(hydro)
                renewable = float(renewable)
                nuclear = float(nuclear)
            except ValueError:
                continue  # Skip invalid rows
            
            # Check if it's a region or country
            # Regions start after countries, but in CSV, regions are at the end
            # Actually, countries first, then World, East Asia, etc.
            # But to distinguish, perhaps check if country in known regions
            regions = ['World', 'East Asia & Pacific', 'Europe & Central', 'Latin America & Caribbean', 'Middle East & North Afrika', 'North America', 'South Asia', 'Sub-Saharan Africa']
            if country in regions:
                cursor.execute('INSERT OR REPLACE INTO World VALUES (?, ?, ?, ?, ?, ?, ?)', 
                               (country, coal, gas, oil, hydro, renewable, nuclear))
            else:
                cursor.execute('INSERT OR REPLACE INTO Country VALUES (?, ?, ?, ?, ?, ?, ?)', 
                               (country, coal, gas, oil, hydro, renewable, nuclear))

conn.commit()
conn.close()

print("Database created and populated.")