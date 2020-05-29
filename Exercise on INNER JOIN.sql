SELECT P.FirstName,P.LastName,PP.BusinessEntityID
FROM Person.Person P
INNER JOIN Person.[Password] PP ON 
P.BusinessEntityID=PP.BusinessEntityID

SELECT E.BirthDate,
       E.NationalIDNumber,
	   E.JobTitle,
	   EDH.DepartmentID,
	   EDH.StartDate,
	   EDH.EndDate
FROM HumanResources.Employee E
INNER JOIN HumanResources.EmployeeDepartmentHistory EDH ON
E.BusinessEntityID=EDH.BusinessEntityID

SELECT P.FirstName,
       P.LastName,
	   PP.PasswordHash,
	   E.EmailAddress
FROM Person.Person P
INNER JOIN Person.[Password] PP ON
PP.BusinessEntityID=P.BusinessEntityID
INNER JOIN Person.EmailAddress E
ON E.BusinessEntityID=P.BusinessEntityID

