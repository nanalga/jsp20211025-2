USE test;

CREATE TABLE mytable7 (
	name VARCHAR(255),
    age INT
);

DESC mytable7;

INSERT INTO mytable7 (name, age) VALUES ('son', 77);

SELECT * FROM mytable7;

CREATE TABLE mytable8(
	name VARCHAR(255),
    score DOUBLE
);

INSERT INTO mytable8 (name, score) VALUES ('Park', 3.14);

SELECT * FROM mytable8;

CREATE TABLE mytable9 (
	col1 DECIMAL(3),
    col2 DECIMAL(5, 2)
);

INSERT INTO mytable9 (col1, col2) VALUES (100, 100.33);

SELECT * FROM mytable9;

INSERT INTO mytable9 (col1) VALUES (1100);

INSERT INTO mytable9 (col2) VALUES(100.12);

INSERT INTO mytable9 (col2) VALUES(100.123);

CREATE TABLE mytable10(
	id INT,
    name VARCHAR(255),
    password VARCHAR(255),
    score DOUBLE
);

DESC mytable10;
