from flask import Flask, render_template, request
import sqlite3
import os

app = Flask(__name__)

# Emission factors in gCO2/kWh
EMISSION_FACTORS = {
    'Coal': 820,
    'Gas': 490,
    'Oil': 740,
    'Hydro': 24,
    'Renewable': 41,
    'Nuclear': 12
}

def get_db_connection():
    conn = sqlite3.connect(os.path.join(os.path.dirname(__file__), '..', 'CarbonFootprint.db'))
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    
    # Get some data preview
    countries = conn.execute('SELECT * FROM Country LIMIT 10').fetchall()
    all_countries = conn.execute('SELECT Country FROM Country ORDER BY Country').fetchall()
    all_regions = conn.execute('SELECT Region FROM World ORDER BY Region').fetchall()
    regions = conn.execute('SELECT * FROM World').fetchall()
    
    conn.close()
    
    observations = [
        "Number of countries: 142",
        "Average energy usage: Coal 18.0%, Gas 26.0%, Oil 16.5%, Hydro 27.8%, Renewable 6.2%, Nuclear 5.1%",
        "Top coal users: Kosovo (96.9%), Botswana (95.8%), South Africa (93.0%)",
        "Top renewable users: Denmark (55.8%), Kenya (45.7%), Nicaragua (45.0%)",
        "112 countries have no nuclear energy",
        "Regions show varying reliance on sources, e.g., Middle East heavily on Gas (64.1%)"
    ]
    
    return render_template('index.html', countries=countries, all_countries=all_countries, all_regions=all_regions, regions=regions, observations=observations)

@app.route('/country')
def country_detail():
    entity = request.args.get('country')
    if not entity:
        return "No entity selected", 400
    
    conn = get_db_connection()
    
    # Check if country
    country_data = conn.execute('SELECT * FROM Country WHERE Country = ?', (entity,)).fetchone()
    if country_data:
        table = 'Country'
        name = 'Country'
    else:
        # Check region
        country_data = conn.execute('SELECT * FROM World WHERE Region = ?', (entity,)).fetchone()
        if country_data:
            table = 'World'
            name = 'Region'
        else:
            return "Entity not found", 404
    
    # Calculate contributions
    contributions = {}
    total_emission = 0
    for source in ['Coal', 'Gas', 'Oil', 'Hydro', 'Renewable', 'Nuclear']:
        pct = country_data[source]
        factor = EMISSION_FACTORS[source]
        contrib = (pct / 100) * factor
        contributions[source] = {
            'percentage': pct,
            'factor': factor,
            'contribution': contrib
        }
        total_emission += contrib
    
    conn.close()
    
    return render_template('country.html', country=entity, data=country_data, contributions=contributions, total_emission=total_emission, is_region=(table=='World'))

@app.route('/calculate', methods=['POST'])
def calculate():
    country = request.form['country']
    kw = float(request.form['kw'])
    
    conn = get_db_connection()
    country_data = conn.execute('SELECT * FROM Country WHERE Country = ?', (country,)).fetchone()
    conn.close()
    
    if not country_data:
        return "Country not found", 404
    
    # Total emission gCO2/kWh
    total_gco2_kwh = sum((country_data[source] / 100) * EMISSION_FACTORS[source] for source in EMISSION_FACTORS)
    
    # Annual: gCO2/kWh * 24 * 365 * kw
    annual_co2 = total_gco2_kwh * 24 * 365 * kw  # in grams
    
    # To kg
    annual_co2_kg = annual_co2 / 1000
    
    # Trees: 25 kg CO2 per tree per year
    trees = annual_co2_kg / 25
    
    return render_template('result.html', country=country, kw=kw, annual_co2=annual_co2_kg, trees=trees)

if __name__ == '__main__':
    app.run(debug=True)

