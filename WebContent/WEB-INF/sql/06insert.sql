USE test;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers VALUES (92, 'kim', 'kim', 'Gangnam', 'Seoul', '88888', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName) VALUES (93, 'Lee');

INSERT INTO Customers (CustomerID, ContactName) VALUES (94, 'Lee');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (95, 'Park', 'Jisong', 'Yeoksam', 'Seoul', '77777', 'Korea');

-- 96번째 97번째 recode를 추가하는 sql 작성, 실행
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (96, 'Yoon', 'Juju', 'Guro', 'Seoul', '88888', 'Korea');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
Values (97, 'cho', 'Yujin', 'Gangnam', 'Incheon', '99999', 'Korea');

DELETE FROM Customers WHERE CustomerID = 100;

INSERT INTO Customers (CustomerName) VALUES ('cha');
INSERT INTO Customers (CustomerName) VALUES ('hot');

-- 두 개의 row(record, data)를 CustomerID 컬럼의 값을 직접 작성하지 않고 추가하는 sql 작성/실행
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('bts', 'sm', 'bucheon', 'kyung', '33333', 'Korea');

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('pinkle', 'ds', 'samsung', 'Seoul', '22222', 'Korea');

SELECT * FROM Suppliers;

SELECT * FROM Suppliers ORDER BY SupplierID DESC;
