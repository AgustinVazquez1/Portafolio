from sqlalchemy import create_engine
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

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

# Distribucion del Precio de Venta
df['Selling_Price'].hist(bins=20)
plt.xlabel("Precio de Venta")
plt.ylabel("Frecuencia")
plt.title("Distribución del Precio de Venta")
plt.show()

# Relacion entre Kilometraje y Precio de Venta
df.plot.scatter(x='Kms_Driven', y='Selling_Price', alpha=0.5)
plt.xlabel("Kilómetros Recorridos")
plt.ylabel("Precio de Venta")
plt.title("Kilómetros Recorridos vs Precio de Venta")
plt.show()

# Precio Promedio por Año de Fabricación
df.groupby("Year")["Selling_Price"].mean().plot(kind="bar", figsize=(10, 6))
plt.xlabel("Año del Modelo")
plt.ylabel("Precio Promedio de Venta")
plt.title("Precio Promedio de Venta por Año del Modelo")
plt.show()

# Precio Promedio por Tipo de Combustible
df.groupby("Fuel_Type")["Selling_Price"].mean().plot(kind="bar", color="orange")
plt.xlabel("Tipo de Combustible")
plt.ylabel("Precio Promedio de Venta")
plt.title("Precio Promedio de Venta por Tipo de Combustible")
plt.show()

# Distribucion de Kilometraje
df["Kms_Driven"].hist(bins=30)
plt.xlabel("Kilómetros Recorridos")
plt.ylabel("Frecuencia")
plt.title("Distribución de Kilómetros Recorridos")
plt.show()

# Distribucion por Tipo de Combustible
fuel_count = df["Fuel_Type"].value_counts()
fuel_count.plot.pie(autopct="%1.1f%%", figsize=(8, 8))
plt.title("Distribución por Tipo de Combustible")
plt.ylabel("")
plt.show()

# Distribucion por Tipo de Transmision
transmission_count = df["Transmission"].value_counts()
transmission_count.plot.bar(color="green")
plt.xlabel("Tipo de Transmisión")
plt.ylabel("Número de Autos")
plt.title("Distribución por Tipo de Transmisión")
plt.show()

# Matriz de Correlacion
numeric_columns = df.select_dtypes(include=["number"])
correlation = numeric_columns.corr()
sns.heatmap(correlation, annot=True, cmap="coolwarm")
plt.title("Matriz de Correlación")
plt.show()

# Autos mas populares
print(df["Car_Name"].value_counts().head(10))
top_cars = df["Car_Name"].value_counts().head(10).index
avg_price_top_cars = df[df["Car_Name"].isin(top_cars)].groupby("Car_Name")["Selling_Price"].mean()
avg_price_top_cars.plot(kind="bar", figsize=(10, 6))
plt.xlabel("Modelo de Auto")
plt.ylabel("Precio Promedio de Venta")
plt.title("Precio Promedio de los 10 Autos Más Populares")
plt.show()

# Distribucion por Rango de Precio
price_bins = [0, 2, 5, 10, 20, 50]  # Rango de precios en Lakhs
price_labels = ["0-2", "2-5", "5-10", "10-20", "20+"]
df["Price_Group"] = pd.cut(df["Selling_Price"], bins=price_bins, labels=price_labels)

price_group_count = df["Price_Group"].value_counts()
price_group_count.plot(kind="bar", color="teal", figsize=(8, 6))
plt.xlabel("Rango de Precio (en Lakhs)")
plt.ylabel("Número de Autos")
plt.title("Distribución de Autos por Rango de Precio")
plt.show()

# Precio Promedio por Número de Propietarios
df.groupby("Owner")["Selling_Price"].mean().plot(kind="bar", color="skyblue")
plt.xlabel("Número de Propietarios")
plt.ylabel("Precio Promedio de Venta")
plt.title("Precio Promedio de Venta por Número de Propietarios")
plt.show()

# Distribución por Año del Modelo (Nuevo vs Viejo)
df["Year_Group"] = df["Year"].apply(lambda x: "Recientes (2015+)" if x >= 2015 else "Antiguos (<2015)")

year_group_count = df["Year_Group"].value_counts()
year_group_count.plot.pie(autopct="%1.1f%%", figsize=(8, 8))
plt.title("Distribución del Inventario: Autos Recientes vs Antiguos")
plt.ylabel("")
plt.show()

# Exportar a CSV
df.to_csv("InformesAutos.csv", index=False)
