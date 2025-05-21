import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.express as px

# Load data
df = pd.read_csv('owid-covid-data.csv')

# Check structure
print("Columns:\n", df.columns)
print("\nSample rows:\n", df.head())
print("\nMissing values:\n", df.isnull().sum())

# Convert date to datetime
df['date'] = pd.to_datetime(df['date'])

# Filter countries
countries = ['Kenya', 'United States', 'India']
df = df[df['location'].isin(countries)]

# Drop rows with missing dates or total_cases
df = df.dropna(subset=['date', 'total_cases'])

# Fill other missing numeric values
df.fillna(0, inplace=True)

# Plot total cases over time
for country in countries:
    subset = df[df['location'] == country]
    plt.plot(subset['date'], subset['total_cases'], label=country)

plt.title("Total COVID-19 Cases Over Time")
plt.xlabel("Date")
plt.ylabel("Total Cases")
plt.legend()
plt.savefig("total_cases.png")  # Save the plot
plt.clf()  # Clear the figure for the next plot

# Calculate death rate
df['death_rate'] = df['total_deaths'] / df['total_cases']

# Plot total vaccinations over time
for country in countries:
    subset = df[df['location'] == country]
    plt.plot(subset['date'], subset['total_vaccinations'], label=country)

plt.title("Vaccination Rollout Over Time")
plt.xlabel("Date")
plt.ylabel("Total Vaccinations")
plt.legend()
plt.savefig("vaccination_rollout.png")
plt.clf()

# Plot choropleth using Plotly
latest = df[df['date'] == df['date'].max()]
fig = px.choropleth(latest,
                    locations="iso_code",
                    color="total_cases",
                    hover_name="location",
                    title="Total COVID-19 Cases by Country")
fig.write_html("choropleth_map.html")  # Save interactive map to file
