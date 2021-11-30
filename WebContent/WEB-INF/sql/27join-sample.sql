USE test;

SELECT * FROM Categories;
SELECT * FROM Products;

SELECT 
    c.CategoryName, p.ProductName, p.Unit, p.Price
FROM
    Products p
        JOIN
    Categories c ON p.CategoryID = c.CategoryID
ORDER BY 1 , 2;