USE test;

SELECT * FROM mytable28Customer; -- 3, 4, 5, 6
SELECT * FROM mytable29Tel; -- 1, 3, 4

SELECT * FROM mytable28Customer c LEFT OUTER JOIN mytable29Tel t ON c.id = t.customerId;
SELECT * FROM mytable28Customer c LEFT JOIN mytable29Tel t ON c.id = t.customerId; -- outer 생략 가능

-- 전화번호 없는 고객
SELECT *
FROM mytable28Customer c LEFT JOIN mytable29Tel t ON c.id = t.customerId
WHERE t.id IS NULL;

-- 연습 : 주문한적 없는 고객명 오름차순 조회
-- 사용테이블 : Customers, Orders
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT c.CustomerName
FROM Customers c LEFT OUTER JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY c.CustomerName;

-- 연습 : 주문 받은 적 없는 직원명 오름차순 조회
-- 사용테이블 : Employees, Orders

SELECT * FROM Employees;
SELECT * FROM Orders;

SELECT e.LastName, e.FirstName
FROM Employees e LEFT OUTER JOIN Orders o ON e.EmployeeID = o.EmployeeID
WHERE o.OrderID IS NULL
ORDER BY e.LastName, e.FirstName;





 