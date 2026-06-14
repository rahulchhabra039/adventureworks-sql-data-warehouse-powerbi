/*
AdventureWorks Data Warehouse
Create FactSales Table
*/

USE AdventureWorksDW;
GO

CREATE TABLE FactSales
(
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,

    DateKey INT NOT NULL,

    CustomerKey INT NOT NULL,

    ProductKey INT NOT NULL,

    TerritoryKey INT NOT NULL,

    SalesOrderID INT,

    OrderQty SMALLINT,

    UnitPrice MONEY,

    UnitPriceDiscount MONEY,

    SalesAmount MONEY
);
GO