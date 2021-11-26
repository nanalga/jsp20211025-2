USE test;

CREATE TABLE mytable12 (
	col1 int,
    col2 double,
    col3 DEC(10, 3),
    col4 CHAR(3),
    col5 VARCHAR(255),
    col6 DATE,
    col7 DATETIME
);

SELECT * FROM mytable12;

-- JDBC37Servlet, JDBC38Servlet
CREATE TABLE mytable13(
	name VARCHAR(255),
    age INT,
    birth DATE
);

SELECT * FROM Suppliers ORDER BY SupplierID DESC;


