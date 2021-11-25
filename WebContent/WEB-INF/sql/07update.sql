SELECT * FROM Customers ORDER BY CustomerID DESC;

UPDATE Customers
SET Address = 'yeoksam'
WHERE CustomerID = 104;

UPDATE Customers
SET Address ='mancuty',
	City = 'Suwon'
WHERE CustomerID = 104;

-- JDBC 용
UPDATE Customers
Set
	CustomerName = ?,
    ContactName = ?,
    Address = ?,
    City = ?,
    PostalCode = ?,
    Country = ?
WHERE
	CustomerID = ?;

SELECT * FROM Suppliers ORDER BY SupplierID DESC;
