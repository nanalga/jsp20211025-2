USE test;

SELECT * FROM mytable28Customer; -- 3, 4, 5, 6
SELECT * FROM mytable29Tel; -- 1, 3, 4

SELECT * FROM mytable28Customer c RIGHT OUTER JOIN mytable29Tel t ON c.id = t.customerId;
SELECT * FROM mytable28Customer c RIGHT JOIN mytable29Tel t ON c.id = t.customerId;

-- 주인없는 전화번호

SELECT *
FROM mytable28Customer c RIGHT JOIN mytable29Tel t ON c.id = t.customerId
WHERE c.id IS NULL;

-- 연습1 : 주문한적 없는 고객명 오름차순 조회
-- 사용테이블 : Customers, Orders
SELECT c.CustomerName, o.OrderID
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderID IS NULL
ORDER BY c.CustomerName; 

-- 연습2 : 주문 받은 적 없는 직원명 오름차순 조회
-- 사용테이블 : Employees, Orders
SELECT e.LastName, e.FirstName
FROM Orders o RIGHT JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderID IS NULL
ORDER BY e.LastName, e.FirstName;

