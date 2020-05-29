WITH Hires
AS(
   SELECT YEAR(HireDate) AS HireYear,BusinessEntityID
   FROM HumanResources.Employee
   ), 
HireByYear AS (
               SELECT HireYear,COUNT(*) AS HireCount
               FROM Hires
               GROUP BY HireYear
               )
SELECT
H1.HireYear,
H1.HireCount AS CurrentYearHireCount,
H2.HireCount AS PriorYearHireCount
FROM HireByYear H1
LEFT OUTER JOIN HireByYear H2
ON H1.HireYear = H2.HireYear + 1


WITH Products
AS (
   SELECT YEAR(SellStartDate) AS ProductSellStartYear,ProductID
   FROM Production.Product
   )
SELECT ProductSellStartYear,COUNT(*) AS ProductCount
FROM Products
GROUP BY ProductSellStartYear
GO


WITH SalesMonth
AS (
    SELECT MONTH(OrderDate) AS OrderMonth,TotalDue
    FROM Sales.SalesOrderHeader
    WHERE YEAR(OrderDate) = 2006
   )
SELECT OrderMonth,SUM(TotalDue) AS MonthlySales
FROM SalesMonth
GROUP BY OrderMonth
ORDER BY 1