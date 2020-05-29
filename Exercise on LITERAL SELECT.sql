SELECT 'Sherwin','Arnald','Colaco'
SELECT 7*4
SELECT (7-4)*8
SELECT 'Saratoga Hospitals SQLTraining Class'
SELECT 'Day 1 of training',5*3

SELECT NationalIDNumber
FROM HumanResources.Employee

SELECT NationalIDNumber,JobTitle
FROM HumanResources.Employee

SELECT TOP 20 PERCENT
NationalIDNumber,JobTitle,BirthDate
FROM HumanResources.Employee

SELECT TOP 500
NationalIDNumber AS SSN,JobTitle AS[JobTitle],BirthDate
FROM HumanResources.Employee

SELECT *
FROM Sales.SalesOrderHeader

SELECT TOP 50 PERCENT *
FROM Sales.Customer

SELECT Name AS [Product's Name]
FROM Production.vProductAndDescription

SELECT TOP 400 *
FROM HumanResources.Department

SELECT *
FROM Production.BillOfMaterials

SELECT TOP 1500 *
FROM Sales.vPersonDemographics