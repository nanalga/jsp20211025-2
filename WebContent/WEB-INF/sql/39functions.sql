USE test;

-- CONCAT : 스트링 연결 함수
SELECT concat('abc', 'def') AS newStr;

SELECT EmployeeID, concat(LastName, ' ', FirstName) Name, BirthDate, Notes FROM Employees;

-- SUBSTR : 부분 문자열
SELECT substr('hello world', 1, 4); -- 원본 문자열, 시작위치(1부터 시작), 길이
-- world만 조회 되도록
SELECT substr('hello world', 7, 6);

-- IFNULL : null을 다른 값으로
SELECT CustomerName, IFNULL(ContactName, 'none') ContactName FROM Customers
ORDER BY CustomerID DESC
;

SELECT * FROM Customers ORDER BY CustomerID DESC;

-- coalesce : 첫번째로 null이 아닌 값
SELECT coalesce(null, null, 'hello', null, 'world');

SELECT CustomerName, coalesce(ContactName, 'none') FROM Customers ORDER BY CustomerID DESC;

-- now
SELECT now();

SELECT CustomerID, CustomerName, ContactName, 
	   concat(ifnull(Address, ''),
       ', ',
       ifnull(City, ''),
       ', ',
       ifnull(PostalCode, ''),
       ', ',
       ifnull(Country, '')) FullAddress
FROM Customers;







