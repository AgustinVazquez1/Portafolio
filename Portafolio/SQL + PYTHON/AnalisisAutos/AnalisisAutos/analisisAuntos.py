import encodings
from sqlalchemy import create_engine
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import matplotlib
matplotlib.rcParams.update(matplotlib.rcParamsDefault)

import sys
sys.stdout.reconfigure(encoding= 'utf-8')



# Conexion a la base de datos
engine = create_engine("mssql+pyodbc://NotebookAgus\\AGUSDEV/carData?driver=SQL+Server")
query = "SELECT * FROM autos"
df = pd.read_sql(query, engine)

# Informacion general
print(df.info())
print(df.describe())

# Valores unicos en columnas clave
print(df['Fuel_Type'].unique())
print(df['Seller_Type'].unique())
print(df['Transmission'].unique())

matplotlib.rcParams['axes.unicode_minus'] = False
matplotlib.rcParams['font.family'] = 'DejaVu Sans'


# Distribucion del Precio de Venta
df['Selling_Price'].hist(bins=20)
plt.xlabel("Precio de Venta")
plt.ylabel(u"Frecuenciañññññ")
plt.title("Distribucion del Precio de Venta")
plt.show()

# Relacion entre Kilometraje y Precio de Venta
df.plot.scatter(x='Kms_Driven', y='Selling_Price', alpha=0.5)
plt.xlabel("Kilometros Recorridos")
plt.ylabel("Precio de Venta")
plt.title("Kilometros Recorridos vs Precio de Venta")
plt.show()

# Precio Promedio por Anio de Fabricacion
df.groupby("Year")["Selling_Price"].mean().plot(kind="bar", figsize=(10, 6))
plt.xlabel("Año de Fabricacion")
plt.ylabel("Precio Promedio de Venta")
plt.title("Precio Promedio de Venta por Anio de Fabricacion")
plt.show()

# Precio Promedio por Tipo de Combustible
df.groupby("Fuel_Type")["Selling_Price"].mean().plot(kind="bar", color="orange")
plt.xlabel("Tipo de Combustible")
plt.ylabel("Precio Promedio de Venta")
plt.title("Precio Promedio de Venta por Tipo de Combustible")
plt.show()

# Distribucion de Kilometraje
df["Kms_Driven"].hist(bins=30)
plt.xlabel("Kilometros Recorridos")
plt.ylabel("Frecuencia")
plt.title("Distribucion de Kilometros Recorridos")
plt.show()

# Distribucion por Tipo de Combustible
fuel_count = df["Fuel_Type"].value_counts()
fuel_count.plot.pie(autopct="%1.1f%%", figsize=(8, 8))
plt.title("Distribucion por Tipo de Combustible")
plt.ylabel("")
plt.show()

# Distribucion por Tipo de Transmision
transmission_count = df["Transmission"].value_counts()
transmission_count.plot.bar(color="green")
plt.xlabel("Tipo de Transmision")
plt.ylabel("Numero de Autos")
plt.title("Distribucion por Tipo de Transmision")
plt.show()

# Matriz de Correlacion
numeric_columns = df.select_dtypes(include=["number"])
correlation = numeric_columns.corr()
sns.heatmap(correlation, annot=True, cmap="coolwarm")
plt.title("Matriz de Correlacion")
plt.show()

# Autos mas populares
print(df["Car_Name"].value_counts().head(10))
top_cars = df["Car_Name"].value_counts().head(10).index
avg_price_top_cars = df[df["Car_Name"].isin(top_cars)].groupby("Car_Name")["Selling_Price"].mean()
avg_price_top_cars.plot(kind="bar", figsize=(10, 6))
plt.xlabel("Modelo de Auto")
plt.ylabel("Precio Promedio de Venta")
plt.title("Precio Promedio de los 10 Autos Mas Populares")
plt.show()

# Distribucion por Rango de Precio
price_bins = [0, 2, 5, 10, 20, 50]  # Rango de precios en Lakhs
price_labels = ["0-2", "2-5", "5-10", "10-20", "20+"]
df["Price_Group"] = pd.cut(df["Selling_Price"], bins=price_bins, labels=price_labels)

price_group_count = df["Price_Group"].value_counts()
price_group_count.plot(kind="bar", color="teal", figsize=(8, 6))
plt.xlabel("Rango de Precio (en Lakhs)")
plt.ylabel("Numero de Autos")
plt.title("Distribucion de Autos por Rango de Precio")
plt.show()

# Precio Promedio por Numero de Propietarios
df.groupby("Owner")["Selling_Price"].mean().plot(kind="bar", color="skyblue")
plt.xlabel("Numero de Propietarios")
plt.ylabel("Precio Promedio de Venta")
plt.title("Precio Promedio de Venta por Numero de Propietarios")
plt.show()

# Distribucion por Anio (Nuevo vs Viejo)
df["Year_Group"] = df["Year"].apply(lambda x: "Nuevos (2015+)" if x >= 2015 else "Viejos (<2015)")

year_group_count = df["Year_Group"].value_counts()
year_group_count.plot.pie(autopct="%1.1f%%", figsize=(8, 8))
plt.title("Distribucion del Inventario: Autos Nuevos vs Viejos")
plt.ylabel("")
plt.show()

# Exportar a CSV
df.to_csv("InformesAutos.csv", index=False)
