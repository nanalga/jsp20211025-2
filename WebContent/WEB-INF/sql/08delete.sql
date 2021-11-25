USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

DELETE FROM Customers WHERE CustomerID = 104;
DELETE FROM Customers WHERE Address = 'bucheon';

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Suppliers ORDER BY SupplierID DESC;