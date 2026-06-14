/*
AdventureWorks Data Warehouse
Create DimProduct Table
*/

USE AdventureWorksDW;
GO

CREATE TABLE DimProduct
(
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,

    ProductID INT NOT NULL,

    ProductName NVARCHAR(100),
    ProductNumber NVARCHAR(25),

    Color NVARCHAR(15),

    StandardCost MONEY,
    ListPrice MONEY,

    ProductSize NVARCHAR(10),

    ProductLine NCHAR(2),
    ProductClass NCHAR(2),
    ProductStyle NCHAR(2),

    SourceModifiedDate DATETIME
);
GO