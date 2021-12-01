USE test;

SELECT * FROM Products;

SELECT * FROM Products
WHERE Price >= 10;

SELECT * FROM Products
WHERE Price <= 20;

SELECT * FROM Products
WHERE Price >= 10 AND Price <= 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE ProductName BETWEEN 'C' AND 'F';

SELECT * FROM Employees ORDER BY BirthDate;
SELECT * FROM Employees WHERE BirthDate BETWEEN '1958-01-01' AND '1958-12-31';

SELECT * FROM Employees WHERE BirthDate LIKE 1928;

SELECT * FROM Employees;
