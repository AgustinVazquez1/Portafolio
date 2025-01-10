CREATE DATABASE Ventas;
GO

USE Ventas;
GO

-- Validar los datos importados: Muestra los primeros 10 registros de la tabla
SELECT TOP 10 * FROM Venta;

-- Verificar el total de registros en la tabla
SELECT COUNT(*) AS TotalRegistros FROM Venta;

-- Productos m�s vendidos: Lista los 10 productos m�s vendidos y la cantidad de veces que se han vendido
SELECT TOP 10 Product_Name, COUNT(*) AS TotalVentas
FROM Venta
GROUP BY Product_Name
ORDER BY TotalVentas DESC;

-- Ingresos por categor�a: Muestra el total de ingresos generados por cada categor�a
SELECT Category, SUM(Sales) AS TotalIngresos
FROM Venta
GROUP BY Category
ORDER BY TotalIngresos DESC;

-- Ingresos por regi�n: Calcula el total de ventas agrupadas por regi�n
SELECT Region, SUM(Sales) AS TotalIngresos
FROM Venta
GROUP BY Region
ORDER BY TotalIngresos DESC;

-- Ventas por trimestre: Analiza c�mo se distribuyen las ventas a lo largo del a�o por trimestre
SELECT DATEPART(QUARTER, Order_Date) AS Trimestre, SUM(Sales) AS TotalVentas
FROM Venta
GROUP BY DATEPART(QUARTER, Order_Date)
ORDER BY Trimestre;

-- Clientes principales: Lista los 10 clientes que m�s han gastado y el total de sus compras
SELECT TOP 10 Customer_Name, SUM(Sales) AS TotalComprado
FROM Venta
GROUP BY Customer_Name
ORDER BY TotalComprado DESC;



ALTER PROCEDURE ConsolidarResultados
AS
BEGIN
    -- Crear una tabla temporal para almacenar los resultados
    CREATE TABLE #Consolidado (
        Consulta NVARCHAR(255),
        Resultado NVARCHAR(MAX)
    );

    -- Total de registros en la tabla
    INSERT INTO #Consolidado
    SELECT 'Total de Registros', CAST(COUNT(*) AS NVARCHAR)
    FROM Venta;

    -- TOP 10 Productos m�s vendidos
    INSERT INTO #Consolidado
    SELECT TOP 10 
        'Productos m�s vendidos: ' + Product_Name, 
        CAST(COUNT(*) AS NVARCHAR)
    FROM Venta
    GROUP BY Product_Name
    ORDER BY COUNT(*) DESC;

    -- Ingresos por categor�a
    INSERT INTO #Consolidado
    SELECT 'Ingresos por Categor�a: ' + Category, CAST(SUM(Sales) AS NVARCHAR)
    FROM Venta
    GROUP BY Category
    ORDER BY SUM(Sales) DESC;

    -- Ingresos por regi�n
    INSERT INTO #Consolidado
    SELECT 'Ingresos por Regi�n: ' + Region, CAST(SUM(Sales) AS NVARCHAR)
    FROM Venta
    GROUP BY Region
    ORDER BY SUM(Sales) DESC;

    -- Ventas por trimestre
    INSERT INTO #Consolidado
    SELECT 'Ventas por Trimestre: ' + CAST(DATEPART(QUARTER, Order_Date) AS NVARCHAR), CAST(SUM(Sales) AS NVARCHAR)
    FROM Venta
    GROUP BY DATEPART(QUARTER, Order_Date)
    ORDER BY DATEPART(QUARTER, Order_Date);

    -- TOP 10 Clientes principales
    INSERT INTO #Consolidado
    SELECT TOP 10 
        'Clientes Principales: ' + Customer_Name, 
        CAST(SUM(Sales) AS NVARCHAR)
    FROM Venta
    GROUP BY Customer_Name
    ORDER BY SUM(Sales) DESC;

    -- D�a de la semana con m�s ventas
    INSERT INTO #Consolidado
    SELECT 
        'D�a con M�s Ventas: ' + DATENAME(WEEKDAY, Order_Date), 
        CAST(SUM(Sales) AS NVARCHAR)
    FROM Venta
    GROUP BY DATENAME(WEEKDAY, Order_Date)
    ORDER BY SUM(Sales) DESC;

    -- Seleccionar todos los resultados consolidados
    SELECT * FROM #Consolidado;

    -- Eliminar la tabla temporal
    DROP TABLE #Consolidado;
END;



EXEC ConsolidarResultados;
