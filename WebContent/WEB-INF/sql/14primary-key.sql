USE test;

-- PRIMARY KEY (기본키, 주키)
-- NOT NUL, UNIQUE

CREATE TABLE mytable19 (
	col1 INT NOT NULL UNIQUE,
    col2 INT
);

DESC mytable19;

CREATE TABLE mytable20 (
	col1 INT PRIMARY KEY,
    col2 INT
);

DESC mytable20;

-- 

CREATE TABLE mytable21Student (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
    birth DATE NOT NULL,
    address VARCHAR(255) NOT NULL
);

DESC mytable21Student;
SELECT * FROM mytable21Student;
INSERT INTO mytable21Student (name, birth, address) VALUES ('kim', '2000-01-01', 'seoul');

DESC Customers;
DESC Employees;
DESC Suppliers;





























