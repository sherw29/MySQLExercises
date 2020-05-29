SELECT FirstName, LastName, 
CASE
    WHEN EmailPromotion=0 THEN 'Promotion 1'
    WHEN EmailPromotion=1 THEN 'Promotion 2'
    WHEN EmailPromotion=2 THEN 'Promotion 3'
	ELSE 'No promotion'
END AS PromotionName FROM Person.Person


SELECT
CASE
WHEN LEN(FirstName) >= 10 THEN 'Long Name'
ELSE 'Short Name'
END
FROM Person.Person
GO

WITH SalesRanges
AS (
   SELECT
   CASE
       WHEN TotalDue BETWEEN 0 AND 149.99 THEN '$0 to $149.99'
       WHEN TotalDue BETWEEN 150 AND 499.99 THEN '$150 to $499.99'
       WHEN TotalDue BETWEEN 500 AND 4999.99 THEN '$500 to $4,999.99'
       WHEN TotalDue BETWEEN 5000 AND 24999.99 THEN '$5,000 to $24,999.99'
       ELSE 'Over $25,000'
       END AS SalesPriceRange,SalesOrderID
   FROM Sales.SalesOrderHeader
   WHERE SalesPersonID IS NOT NULL
   )
SELECT
SalesPriceRange,COUNT(*)
FROM SalesRanges
GROUP BY SalesPriceRange


SELECT
  CASE
      WHEN Color IS NULL THEN 'No Color'
      ELSE Color
      END AS Color
FROM Production.Product


SELECT
COALESCE(Color, 'No Color')
FROM Production.Product