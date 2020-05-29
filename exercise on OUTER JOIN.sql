SELECT BusinessEntityID,SP.SalesYTD,
       ST.TerritoryID AS 'Sales Territory'
FROM Sales.SalesPerson SP
LEFT OUTER jOIN Sales.SalesTerritory ST ON
SP.TerritoryID=ST.TerritoryID

SELECT P.FirstName,P.LastName,SP.BusinessEntityID,
       SP.SalesYTD,
	   ST.Name AS 'Territory Name'
FROM Sales.SalesPerson SP
LEFT OUTER JOIN Sales.SalesTerritory ST
ON ST.TerritoryID=SP.TerritoryID
INNER JOIN Person.Person P
ON P.BusinessEntityID=SP.BusinessEntityID
WHERE ST.Name IN ('Northeast','Central')

SELECT P.Name,
       P.ListPrice,
	   SC.Name AS ProductSubcategoryName,
	   PC.Name AS ProductCategoryName
FROM Production.Product P
LEFT OUTER JOIN Production.ProductSubcategory SC
ON SC.ProductSubcategoryID=P.ProductSubcategoryID
LEFT OUTER JOIN Production.ProductCategory PC
ON PC.ProductCategoryID=SC.ProductCategoryID
ORDER BY SC.Name DESC,PC.Name 
