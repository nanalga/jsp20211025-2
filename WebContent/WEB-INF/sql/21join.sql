USE test;
-- JOIN : 여러 테이블 조합

INSERT INTO mytable28Customer (firstName, lastName) VALUES ('cha', 'bum');
INSERT INTO mytable28Customer (firstName, lastName) VALUES ('park', 'ji');
INSERT INTO mytable28Customer (firstName, lastName) VALUES ('son', 'hm');
INSERT INTO mytable28Customer (firstName, lastName) VALUES ('lee', 'gang');

SELECT * FROM mytable28Customer;

INSERT INTO mytable29Tel (customerId, tel) VALUES (3, '0101111');
INSERT INTO mytable29Tel (customerId, tel) VALUES (4, '0102222');
INSERT INTO mytable29Tel (customerId, tel) VALUES (4, '0103333');

SELECT * FROM mytable29Tel;

-- join
SELECT * FROM mytable28Customer, mytable29Tel; -- cartesign product (카테시안 곱) ; 조인 조건 없을 시
-- SELECT * FROM mytable29Tel, mytable28Customer;

SELECT * FROM mytable28Customer JOIN mytable29Tel ON mytable28Customer.id = mytable29Tel.customerId;

-- alias (별칭)
SELECT * FROM mytable28Customer AS t28 JOIN mytable29Tel AS t29 ON t28.id = t29.customerId;
SELECT * FROM mytable28Customer t28 JOIN mytable29Tel t29 ON t28.id = t29.customerId; -- AS 생략 가능

SELECT t28.id, t28.firstName, t29.id, t29.tel
FROM mytable28Customer t28 JOIN mytable29Tel t29
ON t28.id = t29.customerId;

SELECT t28.id AS 고객번호, t28.firstName AS 이름, t29.id AS 전화ID, t29.tel AS 전화번호
FROM mytable28Customer t28 JOIN mytable29Tel t29
ON t28.id = t29.customerId;

SELECT t28.id 고객번호, t28.firstName 이름, t29.id 전화ID, t29.tel 전화번호 -- AS 생략가능
FROM mytable28Customer t28 JOIN mytable29Tel t29
ON t28.id = t29.customerId;

-- 예제 : 고객이 주문한 날짜 조회
-- 사용 테이블 : Orders, Customers

SELECT * FROM Orders; -- 주문한 날짜
SELECT * FROM Customers; -- 고객 이름

SELECT c.CustomerName name, o.OrderDate date
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID;

-- 예제 : 어떤 직원이 어느 날짜에 주문 받았는지 조회
-- 사용 테이블 : Orders, Employees
SELECT * FROM Employees;
SELECT * FROM Orders;

SELECT e.lastName, e.FirstName, o.OrderDate 
FROM Employees e JOIN Orders o
	ON e.EmployeeID = o.EmployeeID
ORDER BY o.OrderDate;

SELECT e.lastName, e.FirstName, o.OrderDate 
FROM Employees e JOIN Orders o
	ON e.EmployeeID = o.EmployeeID
ORDER BY e.LastName, e.FirstName;


















