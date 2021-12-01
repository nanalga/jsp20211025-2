USE test;

SELECT * FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';

SELECT * FROM Customers
WHERE CustomerName LIKE 'Alf%'; -- % : 아무거나 0개이상 일치

SELECT * FROM Customers
WHERE CustomerName LIKE '%A'; -- 맨뒤에 A가 붙은 경우

SELECT * FROM Customers
WHERE CustomerName LIKE '%A%'; -- 중간에 A가 있는 경우

-- 연습1 : Employees 에서 LastName에 'u'포함된 직원들 조회
SELECT * FROM Employees
WHERE LastName LIKE '%U%';
-- 연습2 : Employees 에서 Notes에 'BA'가 포함된 직원들 조회
SELECT * FROM Employees
WHERE Notes LIKE '%BA%';

SELECT * FROM Customers
WHERE CustomerName LIKE 'Ernst Hande_';	-- _ : 한글자 아무거나

-- 연습3 : jdbc10 -> dao의 쿼리 변경해서 동작하도록
SELECT employeeID, lastName, firstName, birthDate, notes
FROM Employees
WHERE BirthDate LIKE '1955%'
;






