USE test;

-- 3정규화 (thirth nomal form, 3nf)
-- https://ko.wikipedia.org/wiki/%EC%A0%9C3%EC%A0%95%EA%B7%9C%ED%98%95

CREATE TABLE mytable27Winer (
	id INT PRIMARY KEY AUTO_INCREMENT,
	tournament VARCHAR(255),
    year CHAR(4),
    winnerID INT
);

CREATE TABLE mytable28WinnerBirth (
	id INT PRIMARY KEY AUTO_INCREMENT,
	winner VARCHAR(255),
    birth DATE
);
