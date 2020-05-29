SELECT LEFT('This is a basic string', 8)

SELECT RIGHT('This is another string', 6)

SELECT CHARINDEX('e', Name)
FROM Production.Product

SELECT SUBSTRING(Name, 3, 4)
FROM Sales.SalesTerritory

SELECT LEFT(RIGHT('This is a slightly longer string', 8), 4)

SELECT
LEFT(FirstName, CHARINDEX('e', FirstName, 0))
FROM Person.Person
WHERE LEFT(FirstName, CHARINDEX('e', FirstName, 0)) <> ''