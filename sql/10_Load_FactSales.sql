/*
AdventureWorks Data Warehouse
Load FactSales
*/

USE AdventureWorksDW;
GO

INSERT INTO FactSales
(
    DateKey,
    CustomerKey,
    ProductKey,
    TerritoryKey,
    SalesOrderID,
    OrderQty,
    UnitPrice,
    UnitPriceDiscount,
    SalesAmount
)
SELECT

    CONVERT(INT, FORMAT(H.OrderDate,'yyyyMMdd')),

    DC.CustomerKey,

    DP.ProductKey,

    DT.TerritoryKey,

    H.SalesOrderID,

    D.OrderQty,

    D.UnitPrice,

    D.UnitPriceDiscount,

    D.LineTotal

FROM AdventureWorks2022.Sales.SalesOrderHeader H

INNER JOIN AdventureWorks2022.Sales.SalesOrderDetail D
    ON H.SalesOrderID = D.SalesOrderID

INNER JOIN DimCustomer DC
    ON H.CustomerID = DC.CustomerID

INNER JOIN DimProduct DP
    ON D.ProductID = DP.ProductID

INNER JOIN DimTerritory DT
    ON H.TerritoryID = DT.TerritoryID;
GO