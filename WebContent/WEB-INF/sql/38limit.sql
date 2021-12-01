USE test;

SELECT * FROM Products
ORDER BY Price DESC
LIMIT 3;	-- 위에서 3개

SELECT * FROM Products
ORDER BY Price ASC
LIMIT 3;

-- 연습1 : 가장 늦게 태어난 직원 3명 조회
SELECT * FROM Employees
ORDER BY BirthDate DESC
LIMIT 3;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 0, 5;
-- 첫번째수 : 시작위치,
-- 두번째수 : 개수

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 5, 5;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10, 5;

-- page 처리 활용
-- 한 페이지에 10개의 데이터 조회
-- 1페이지 LIMIT 0, 10
-- 2페이지 LIMIT 10, 10
-- 3페이지 LIMIT 20, 10
-- .......
-- n 페이지 LIMIT (n-1)*10, 10
-- -------------------------------------
-- 한 페이지에 x개의 데이터 조회
-- 1페이지 LIMIT 0, x
-- 2페이지 LIMIT x, x
-- 3페이지 LIMIT x*2, x
-- .......
-- n 페이지 LIMIT (n-1)*x, x

-- > 마지막은 몇 페이지? 
-- 필요한 값 : 총 records 수 (SELECT COUNT(*) FROM tableName)
-- 총 records의 수는 99일 때 페이지당 x개의 출력시 마지막은 몇페이지?
-- 99 / x 몫 : (몫 + 1) 또는 (몫)
-- 							 나누어 떨어질때

SELECT count(*) FROM Customers;
SELECT * FROM Customers
ORDER BY CustomerID
LIMIT ?, ?





