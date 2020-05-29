SELECT
COALESCE(Title, 'No Title Listed') AS Title
FROM Person.Person

SELECT
COALESCE(MiddleName, 'No Middle Name Listed') AS MiddleName
FROM Person.Person

SELECT
COALESCE(FirstName + ' ' + MiddleName + ' ' + LastName,
FirstName + ' ' + LastName) AS FullName
FROM Person.Person

SELECT NULLIF(MakeFlag, FinishedGoodsFlag)
FROM Production.Product