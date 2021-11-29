USE test;

SELECT * FROM mytable28Customer; -- 3, 4, 5, 6
SELECT * FROM mytable29Tel; -- 1, 3, 4

-- 컬럼의 수가 같은 조회 결과의 합집합
SELECT firstName FROM mytable28Customer

UNION

SELECT lastName FROM mytable28Customer;

INSERT INTO mytable28Customer (firstName, lastName) VALUES ('ji',  'sj');

-- 중복된 값도 조회
SELECT firstName FROM mytable28Customer
UNION ALL
SELECT lastName FROM mytable28Customer;

-- union 사용해서 full outer join
SELECT * FROM mytable28Customer; -- 3, 4, 5, 6, 7
SELECT * FROM mytable29Tel; -- 1, 3, 4

SELECT * FROM mytable28Customer c LEFT JOIN mytable29Tel t ON c.id = t.customerId
UNION 
SELECT * FROM mytable28Customer c RIGHT JOIN mytable29Tel t ON c.id = t.customerId;

-- 연습 : 고객명과, 직원의 LastName을 하나의 컬럼으로 조회
SELECT c.CustomerName FROM Customers c
UNION
SELECT e.LastName FROM Employees e 
ORDER BY 1;



