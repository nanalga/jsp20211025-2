-- Structured Query Language (SQL)

-- 한 줄 주석
-- 하나의 명령문은 세미콜론으로 끝남
-- 하나의 명령문을 실행하는 방법
-- 커서를 명령문만 (또는 맨끝)에 두고 ctrl_enter
USE test;

SELECT now();

-- sql은 대소문자 구분을 안함 (단, 벤더나 버전에 따라 다를 수 있음)
SELECT NOW();

-- sql은 작성 관습 : 키워드는 대문자로 작성
SELECT now();

SELECT now();

SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM OrderDerails;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM Shippers;
SELECT * FROM Suppliers;

