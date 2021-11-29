USE test;

-- 2정규화(second normal form, 2nf)
-- 예제 :
-- https://ko.wikipedia.org/wiki/%EC%A0%9C2%EC%A0%95%EA%B7%9C%ED%98%95

CREATE TABLE mytable25Employee (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employee VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE mytable26Skill (
	id INT PRIMARY KEY AUTO_INCREMENT,
    employeeID INT NOT NULL,
    skill VARCHAR(255)
);
