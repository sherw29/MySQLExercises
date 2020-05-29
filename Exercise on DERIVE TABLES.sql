SELECT *
FROM (
SELECT *, YEAR(HireDate) AS HireYear, YEAR(BirthDate) AS BirthYear
FROM HumanResources.Employee
) AS Emp
WHERE HireYear >= 2006 AND BirthYear <= 1968

SELECT
OrderYear,
SUM(TotalDue) AS TotalSales
FROM (
SELECT *, YEAR(OrderDate) AS OrderYear
FROM Sales.SalesOrderHeader
) AS SalesOrders
WHERE OrderYear IN (2005, 2006)
GROUP BY OrderYear