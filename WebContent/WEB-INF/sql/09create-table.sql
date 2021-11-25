USE test;

-- CHAR
CREATE TABLE mytable1 (
	col1 CHAR(1),
	col2 CHAR(2),
    col3 CHAR(3),
    col4 CHAR(4)
);

INSERT INTO mytable1 (col1, col2, col3, col4)
VALUES ('a', 'ab', 'abc', 'abcd');

SELECT * FROM mytable1;

INSERT INTO mytable1 (col1)
VALUES ('ab'); -- 안됨

INSERT INTO mytable1 (col4)
VALUES ('ab');

-- VARCHAR
CREATE TABLE mytable2 (
	c1 VARCHAR(1),
    c2 VARCHAR(2),
    c3 VARCHAR(3),
    c4 VARCHAR(4)
);

INSERT INTO mytable2 (c1, c2, c3, c4) VALUES ('a', 'ab', 'abc', 'abcd');
INSERT INTO mytable2 (c2) VALUES ('abc'); -- X
INSERT INTO mytable2 (c4) VALUES ('ab');

SELECT * FROM mytable2;

-- 연습: 2개 테이블 mytable3, mytable4 만들기
CREATE TABLE mytable3 (
	c1 CHAR(1),
    c2 CHAR(2),
    c3 CHAR(3),
    c4 CHAR(4)
);

INSERT INTO mytable3 (c1, c2, c3, c4) VALUES ('a', 'ab', 'abc', 'abcd');
SELECT * FROM mytable3;

CREATE TABLE mytable5 (
	name VARCHAR (11),
    address VARCHAR (255),
    postCode VARCHAR (6)
);

INSERT INTO mytable4 (c1, c2, c3, c4) VALUES ('abc', 'ab', 'bbca', 'a');
SELECT * FROM mytable4;

INSERT INTO mytable5 (name, address, postCode) VALUES ('kim', 'seoul', '000000');
INSERT INTO mytable5 (name, address, postCode) VALUES ('lee', 'busan', '00');

SELECT * FROM mytable5;

SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SET sql_mode = '';

CREATE TABLE mytable6 (
	id VARCHAR(255),
    nickName VARCHAR(255),
    note VARCHAR(65535)
);

DESC mytable6;

INSERT INTO mytable6 (id, nickName, note) VALUES('donald', 'trump', 'president');

SELECT * FROM mytable6;