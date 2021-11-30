USE test;

SELECT * FROM Products
ORDER BY Price ASC;

SELECT MIN(Price) AS SmallesPrice FROM Products;
SELECT MAX(Price) AS LargestPrice FROM Products; -- AS 생략 가능

-- 연습 : Employees 테이블에서 가장 이른 생일, 늦은 생일 조회
SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

-- 쿼리안에 쿼리 (nested query)
SELECT * FROM Employees
Where BirthDate = (SELECT MIN(BirthDate) FROM Employees); -- 주의 : = 연산자 사용시 subquery 결과는 단일(1row)

-- 연습 1 : 가장 나중에 태어난 사람(들) 조회
SELECT * FROM Employees
WHERE BirthDate = (SELECT MAX(BirthDate) FROM Employees);

-- 연습2 : 가장 저렴한 가격의 상품(들) 조회
SELECT * FROM Products
WHERE Price = (SELECT MIN(Price) FROM Products);

-- 연습3 : 가장 비싼 가격의 상품(들) 조회1
SELECT * FROM Products
WHERE Price = (SELECT max(Price) FROM Products);