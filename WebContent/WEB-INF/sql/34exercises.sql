USE test;

-- 상품별 판매수량
SELECT od.ProductID, p.ProductName, od.Quantity, sum(od.Quantity)
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Products p ON od.ProductID = p.ProductID
GROUP BY(od.ProductID)
ORDER BY 1
; 

-- 상품별 매출액
SELECT od.ProductID, p.ProductName, sum(od.Quantity) * p.Price
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Products p ON od.ProductID = p.ProductID
GROUP BY(od.ProductID)
ORDER BY 1
; 

-- 날짜별 매출액
SELECT o.OrderDate, od.ProductID, p.ProductName, p.Price, od.Quantity, sum(od.Quantity) * p.Price
FROM Orders o JOIN OrderDetails od ON o.OrderID = od.OrderID
			  JOIN Products p ON od.ProductID = p.ProductID
GROUP BY(o.OrderDate)
ORDER BY 1
;