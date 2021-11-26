use test;

CREATE TABLE mytable11 (
	col1 DATE,
    col2 DATETIME
);

DESC mytable11;

INSERT INTO mytable11 (col1) VALUES ('2021-11-25');

SELECT * FROM mytable11;

INSERT INTO mytable11(col2) VALUES('2021-11-25 12:33:10');

SELECT now();

INSERT INTO mytable11(col1, col2) VALUES(now(), now());




