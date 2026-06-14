/*
AdventureWorks Data Warehouse
Load DimCustomer
*/

USE AdventureWorksDW;
GO

INSERT INTO DimCustomer
(
    CustomerID,
    PersonID,
    StoreID,
    TerritoryID,
    AccountNumber,
    SourceModifiedDate
)
SELECT
    CustomerID,
    PersonID,
    StoreID,
    TerritoryID,
    AccountNumber,
    ModifiedDate
FROM AdventureWorks2022.Sales.Customer;
GO

SELECT COUNT(*) AS DimCustomerCount
FROM DimCustomer;

/*
Load DimProduct
*/

INSERT INTO DimProduct
(
    ProductID,
    ProductName,
    ProductNumber,
    Color,
    StandardCost,
    ListPrice,
    ProductSize,
    ProductLine,
    ProductClass,
    ProductStyle,
    SourceModifiedDate
)
SELECT
    ProductID,
    Name,
    ProductNumber,
    Color,
    StandardCost,
    ListPrice,
    Size,
    ProductLine,
    Class,
    Style,
    ModifiedDate
FROM AdventureWorks2022.Production.Product;
GO

SELECT COUNT(*) AS DimProductCount
FROM DimProduct;

/*
Load DimTerritory
*/

INSERT INTO DimTerritory
(
    TerritoryID,
    TerritoryName,
    CountryRegionCode,
    TerritoryGroup,
    SourceModifiedDate
)
SELECT
    TerritoryID,
    Name,
    CountryRegionCode,
    [Group],
    ModifiedDate
FROM AdventureWorks2022.Sales.SalesTerritory;
GO

SELECT COUNT(*) AS DimTerritoryCount
FROM DimTerritory;
