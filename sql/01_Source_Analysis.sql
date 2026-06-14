-- Source System Analysis

USE AdventureWorks2022;
GO

-- Row Counts

SELECT COUNT(*) AS CustomerCount
FROM Sales.Customer;

SELECT COUNT(*) AS ProductCount
FROM Production.Product;

SELECT COUNT(*) AS OrderCount
FROM Sales.SalesOrderHeader;

SELECT COUNT(*) AS OrderDetailCount
FROM Sales.SalesOrderDetail;

SELECT COUNT(*) AS TerritoryCount
FROM Sales.SalesTerritory;

-- Sample Data Review

SELECT TOP 10 *
FROM Sales.SalesOrderHeader;

SELECT TOP 10 *
FROM Sales.SalesOrderDetail;

SELECT TOP 10 *
FROM Sales.Customer;

SELECT TOP 10 *
FROM Production.Product;

SELECT TOP 10 *
FROM Sales.SalesTerritory;