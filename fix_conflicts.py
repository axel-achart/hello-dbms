import re

filepath = 'big_project/templates/country.html'
with open(filepath, 'r', encoding='utf-8') as f:
    content = f.read()

# Remplacer le contenu entre les marqueurs de conflit
pattern = r'<<<<<<< HEAD.*?>>>>>>> feat/graphics_project'
replacement = '''<section class="panel">
            <div class="section-header">
                <h2>Mix énergétique et intensité</h2>
                <div class="section-meta">Sources et contribution carbone</div>
            </div>
            <div class="table-wrapper">
                <table class="data-table">
                    <tr>
                        <th>Source</th>
                        <th>% d'utilisation</th>
                        <th>Médiane gCO2/kWh</th>
                        <th>Contribution gCO2/kWh</th>
                    </tr>
                    {% set source_names = {'Coal': 'Charbon', 'Gas': 'Gaz', 'Oil': 'Pétrole', 'Hydro': 'Hydroélectricité',
                    'Renewable': 'Énergies renouvelables', 'Nuclear': 'Nucléaire'} %}
                    {% for source, info in contributions.items() %}
                    <tr>
                        <td>{{ source_names[source] }}</td>
                        <td>{{ info.percentage }}%</td>
                        <td>{{ info.factor }}</td>
                        <td>{{ "%.2f"|format(info.contribution) }}</td>
                    </tr>
                    {% endfor %}
                </table>
            </div>
            <div class="pill" style="margin-top:14px;">Émission totale estimée : <strong>{{ "%.2f"|format(total_emission) }} gCO2/kWh</strong></div>
        </section>'''
content = re.sub(pattern, replacement, content, flags=re.DOTALL)

with open(filepath, 'w', encoding='utf-8') as f:
    f.write(content)
print('File fixed!')
