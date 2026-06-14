/*
AdventureWorks Data Warehouse
Create DimCustomer Table
*/

USE AdventureWorksDW;
GO

CREATE TABLE DimCustomer
(
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,

    CustomerID INT NOT NULL,
    PersonID INT NULL,
    StoreID INT NULL,
    TerritoryID INT NULL,

    AccountNumber NVARCHAR(20),
    SourceModifiedDate DATETIME
);
GO