USE test;

SELECT Country, count(CustomerID) people FROM Customers
-- WHERE people > 10
GROUP BY Country
HAVING count(CustomerID) >= 10 -- people 가능
;

-- 연습1 : 주문을 한 번만 한 사람들을 조회(CustomerName)
-- table : Orders, Customers 
SELECT c.CustomerName, count(OrderID) '1번만 주문'
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
HAVING count(OrderID) = 1
;

-- 연습2 : 주문을 한번 또는 한번도 안한(0) 고객들 조회(CustomerID, CustomerName, 주문수)
SELECT c.CustomerID, c.CustomerName, count(o.OrderID) count
FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING count(o.OrderID) <= 1
ORDER BY count, c.CustomerID
;

-- 연습3 : 주문을 한번 또는 0번 받은 직원들 조회
SELECT e.EmployeeID, e.LastName, e.FirstName, count(o.OrderID) count
FROM Orders o RIGHT JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
HAVING count(o.OrderID) <= 1
ORDER BY count, e.EmployeeID
;

-- 
SELECT Country, City, count(CustomerID)
FROM
	Customers
GROUP BY Country, City;



