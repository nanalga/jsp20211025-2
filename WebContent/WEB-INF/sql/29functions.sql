USE test;

-- count : 개수
-- Customers 테이블의 row수
SELECT count(*) FROM Customers;
SELECT * FROM Customers;
SELECT count(CustomerID) FROM Customers;
SELECT count(ContactName) FROM Customers; -- null 은 count 안함
SELECT * FROM Customers WHERE ContactName IS NULL;

SELECT * FROM Customers ORDER BY Country;
SELECT count(DISTINCT Country) FROM Customers ORDER BY Country;

-- 연습1 : Suppliers의 city 컬럼의 값이 중복없이 몇 개 있는지
SELECT count(DISTINCT City) FROM Suppliers;
-- 연습2 : Suppliers의 country 컬러의 값이 중복없이 몇 개 있는지
SELECT count(DISTINCT Country) FROM Suppliers;

-- 연습3 : Seafood가 몇 번 주문되었는지 조회

SELECT count(*) FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
							  JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Saefood';

-- 연습 4 : Seafood를 한 번이라도 주문한 적이 있는 고객 수 조회
SELECT count(DISTINCT c.CustomerID)
FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
				 JOIN OrderDetails od ON o.OrderID = od.OrderID
                 JOIN Products p ON od.ProductID = p.ProductID
                 JOIN Categories ct ON p.CategoryID = ct.CategoryID
WHERE ct.CategoryName = 'Seafood';






	