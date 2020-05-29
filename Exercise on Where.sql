SELECT FirstName,LastName
FROM Person.Person
WHERE FirstName='Mark'

SELECT TOP 100 *
FROM Production.Product
WHERE ListPrice<>0

SELECT *
FROM HumanResources.vEmployee
WHERE LastName<'D'

SELECT * 
FROM Person.StateProvince
WHERE CountryRegionCode='CA'

SELECT 
FirstName AS "Customer First Name",
LastName As "Customer Last Name" 
FROM Sales.vIndividualCustomer
WHERE LastName='Smith'

SELECT *
FROM Sales.vIndividualCustomer
WHERE CountryRegionName='Australia'
OR (PhoneNumberType='Cell'AND EmailPromotion=0)

SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE Department IN ('Executive','Tool Design','Engineering')

SELECT * 
FROM HumanResources.vEmployeeDepartment
WHERE StartDate BETWEEN '7-1-2000' AND '6-30-2002'

SELECT *
FROM Sales.vIndividualCustomer
WHERE LastName LIKE '%r'

SELECT * 
FROM Sales.vIndividualCustomer
WHERE LastName IN ('Lopez','Martin','Wood')
      AND FirstName LIKE '[C-L]%'

SELECT * 
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL

SELECT SalesPersonID,TotalDue
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL and TotalDue>7000

