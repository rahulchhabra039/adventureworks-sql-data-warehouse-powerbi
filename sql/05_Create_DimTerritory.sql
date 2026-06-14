/*
AdventureWorks Data Warehouse
Create DimTerritory Table
*/

USE AdventureWorksDW;
GO

CREATE TABLE DimTerritory
(
    TerritoryKey INT IDENTITY(1,1) PRIMARY KEY,

    TerritoryID INT NOT NULL,

    TerritoryName NVARCHAR(50),

    CountryRegionCode NVARCHAR(10),

    TerritoryGroup NVARCHAR(50),

    SourceModifiedDate DATETIME
);
GO