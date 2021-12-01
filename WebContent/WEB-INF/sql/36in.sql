USE test;

SELECT * FROM Customers
WHERE Country = 'Germany'
	OR Country = 'Mexico'
    OR Country = 'USA'
;

SELECT * FROM Customers
WHERE Country IN ('Germany', 'Mexico', 'USA');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'Mexico', 'USA');

-- 연습1 : 국가가 'USA', 'UK'인 suppliers를 조회(IN 키워드 사용)
SELECT * FROM Suppliers
WHERE Country IN ('USA', 'UK');

-- 연습1 : 국가가 'USA', 'UK'가 아닌 suppliers를 조회(NOT IN 키워드 사용)
SELECT * FROM Suppliers
WHERE Country NOT IN ('USA', 'UK');

SELECT * FROM Products;
SELECT * FROM Categories;

-- 연습3 : Meat 또는 Seafood 카테고리 속한 상품명 조회
SELECT p.ProductName, c.CategoryName 
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName LIKE 'Meat%' OR c.CategoryName = 'Seafood'
;

SELECT p.ProductName, c.CategoryName 
FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Meat/Poultry', 'Seafood')
;

-- SUBQUERY 활용
SELECT * FROM Categories WHERE CategoryName IN ('Meat/Poultry', 'Seafood');

SELECT * FROM Products WHERE CategoryID IN (6, 8);

SELECT * FROM Products
WHERE CategoryID IN ( SELECT CategoryID FROM Categories WHERE CategoryName IN ('Meat/Poultry', 'Seafood') );

-- 연습4 : Supplier가 있는 나라에 살고 있는 고객 목록 조회
SELECT Country FROM Suppliers;

SELECT *
FROM Customers c
WHERE Country IN (SELECT Country FROM Suppliers)
;





















