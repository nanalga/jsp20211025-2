USE test;

-- not null
CREATE TABLE mytable14(
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

SELECT * FROM mytable14;

INSERT INTO mytable14 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable14 (col2) VALUES ('ghi');
INSERT INTO mytable14 (col1) VALUES ('jkk');

-- UNIQUE

CREATE TABLE mytable15 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) UNIQUE
);

SELECT * FROM mytable15;

INSERT INTO mytable15 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable15 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable15 (col1, col2) VALUES ('abc', 'de');
INSERT INTO mytable15 (col1) VALUES ('abc');
INSERT INTO mytable15 (col1) VALUES ('abc');

-- NOT NULL, UNIQUE
CREATE TABLE mytable16 (
	col1 VARCHAR(5),
    col2 VARCHAR(5) NOT NULL UNIQUE
);

SELECT * FROM mytable16;

INSERT INTO mytable16 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable16 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable16 (col1, col2) VALUES ('abc', 'ifg');

-- CHECK
CREATE TABLE mytable17(
	col1 INT,
    col2 INT CHECK (col2 >= 100 AND col2 <= 200)
);
SELECT * FROM mytable17;
INSERT INTO mytable17 (col1, col2) VALUES (-1000, 100);
INSERT INTO mytable17 (col1, col2) VALUES (-1000, 300);

-- DEFAULT
CREATE TABLE mytable18 (
	col1 INT DEFAULT 0,
    col2 VARCHAR(5) DEFAULT 'a',
    col3 DATE UNIQUE DEFAULT NOW(),
    col4 DATETIME UNIQUE DEFAULT NOW()
);
drop table mytable18;
SELECT * FROM mytable18;
INSERT INTO mytable18 VALUES ();
INSERT INTO mytable18 (col1) VALUES (10);
INSERT INTO mytable18 (col3, col4) VALUES ('1999-11-26', '1999-11-11 11:22:33');

-- DESC
DESC mytable14;
DESC mytable15;
DESC mytable16;










