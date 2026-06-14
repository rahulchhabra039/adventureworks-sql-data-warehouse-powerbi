USE AdventureWorksDW;
GO

-- Sales by Territory
SELECT
    DT.TerritoryName,
    DT.CountryRegionCode,
    DT.TerritoryGroup,
    SUM(FS.SalesAmount) AS TotalSales
FROM FactSales FS
INNER JOIN DimTerritory DT
    ON FS.TerritoryKey = DT.TerritoryKey
GROUP BY
    DT.TerritoryName,
    DT.CountryRegionCode,
    DT.TerritoryGroup
ORDER BY TotalSales DESC;

-- Top 10 Products by Sales

SELECT TOP 10
    DP.ProductName,
    SUM(FS.SalesAmount) AS TotalSales
FROM FactSales FS
INNER JOIN DimProduct DP
    ON FS.ProductKey = DP.ProductKey
GROUP BY
    DP.ProductName
ORDER BY
    TotalSales DESC;

	-- Top 10 Customers by Sales

SELECT TOP 10
    DC.CustomerID,
    SUM(FS.SalesAmount) AS TotalSales
FROM FactSales FS
INNER JOIN DimCustomer DC
    ON FS.CustomerKey = DC.CustomerKey
GROUP BY
    DC.CustomerID
ORDER BY
    TotalSales DESC;

	-- Sales by Year

SELECT
    DD.YearNumber,
    SUM(FS.SalesAmount) AS TotalSales
FROM FactSales FS
INNER JOIN DimDate DD
    ON FS.DateKey = DD.DateKey
GROUP BY
    DD.YearNumber
ORDER BY
    DD.YearNumber;


