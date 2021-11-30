USE test;

-- AVG
SELECT AVG(Price) FROM Products; -- '28.866364' -> '28.496282'

-- SUM
SELECT SUM(Price) FROM Products;

SELECT * FROM Products;
INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('My Prod', 1, 1, '1KG', 0);
INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit)
VALUES ('My Prod', 1, 1, '1KG'); -- null은 평균 계산에서 제외

-- 연습1 : SubQuery 사용해서 평균값 이하인 상품 목록
SELECT * FROM Products
WHERE Price <= (SELECT AVG(Price) FROM Products);
-- 연습2 : SubQuery 사용해서 평균값 이상인 상품 목록
SELECT * FROM Products
WHERE Price >= (SELECT AVG(Price) FROM Products);

-- 연습3 : 1996-07-08에 주문한 상품의 총 수량(Quantity)
-- 사용테이블 : Orders, OrderDetails
SELECT * FROM OrderDetails
WHERE Quantity = (SELECT SUM(Quantity) FROM OrderDetails);

SELECT SUM(od.Quantity)
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
Where o.OrderDate = '1996-07-08'
;












