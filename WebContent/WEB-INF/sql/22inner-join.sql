USE test;

SELECT * FROM mytable28Customer; -- 3, 4, 5, 6
SELECT * FROM mytable29Tel; -- 1, 3, 4

SELECT *
FROM mytable28Customer c INNER JOIN mytable29Tel t ON c.id = t.customerId;

SELECT *
FROM mytable28Customer c JOIN mytable29Tel t ON c.id = t.customerId;
