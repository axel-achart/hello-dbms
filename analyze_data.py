import sqlite3

conn = sqlite3.connect('CarbonFootprint.db')
cursor = conn.cursor()

# Observations
print("=== Observations from data analysis ===")

# Total countries
cursor.execute('SELECT COUNT(*) FROM Country')
count = cursor.fetchone()[0]
print(f"Number of countries: {count}")

# Average percentages
cursor.execute('SELECT AVG(Coal), AVG(Gas), AVG(Oil), AVG(Hydro), AVG(Renewable), AVG(Nuclear) FROM Country')
avg = cursor.fetchone()
print(f"Average usage: Coal {avg[0]:.1f}%, Gas {avg[1]:.1f}%, Oil {avg[2]:.1f}%, Hydro {avg[3]:.1f}%, Renewable {avg[4]:.1f}%, Nuclear {avg[5]:.1f}%")

# Top 5 countries by Coal usage
cursor.execute('SELECT Country, Coal FROM Country ORDER BY Coal DESC LIMIT 5')
top_coal = cursor.fetchall()
print("Top 5 countries by Coal usage:")
for c, p in top_coal:
    print(f"  {c}: {p}%")

# Top 5 by Renewable
cursor.execute('SELECT Country, Renewable FROM Country ORDER BY Renewable DESC LIMIT 5')
top_ren = cursor.fetchall()
print("Top 5 countries by Renewable usage:")
for c, p in top_ren:
    print(f"  {c}: {p}%")

# Countries with 0 Nuclear
cursor.execute('SELECT COUNT(*) FROM Country WHERE Nuclear = 0')
zero_nuc = cursor.fetchone()[0]
print(f"Countries with no Nuclear: {zero_nuc}")

# Regions
cursor.execute('SELECT * FROM World')
regions = cursor.fetchall()
print("Regions:")
for r in regions:
    print(f"  {r[0]}: Coal {r[1]}%, Gas {r[2]}%, etc.")

conn.close()