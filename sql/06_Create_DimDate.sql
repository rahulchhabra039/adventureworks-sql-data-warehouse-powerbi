/*
AdventureWorks Data Warehouse
Create DimDate Table
*/

USE AdventureWorksDW;
GO

CREATE TABLE DimDate
(
    DateKey INT PRIMARY KEY,

    FullDate DATE,

    DayNumber INT,

    MonthNumber INT,

    MonthName NVARCHAR(20),

    QuarterNumber INT,

    YearNumber INT
);
GO