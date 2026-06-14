USE AdventureWorksDW;
GO

SELECT COUNT(*) AS FactSalesCount
FROM FactSales;

SELECT SUM(SalesAmount) AS TotalSales
FROM FactSales;

SELECT TOP 10 *
FROM FactSales;