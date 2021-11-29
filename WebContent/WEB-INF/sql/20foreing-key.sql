USE test;
-- foreing key (외래키, 참조키)

CREATE TABLE mytable28Customer (
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255),
    lastName VARCHAR(255)
);

CREATE TABLE mytable29Tel (
	id INT PRIMARY KEY AUTO_INCREMENT,
    customerId INT,
    tel VARCHAR(255),
    FOREIGN KEY (customerId) REFERENCES mytable28Customer(id)
);

INSERT INTO mytable28Customer (firstName, lastName) VALUES ('hong', 'gildong');
INSERT INTO mytable28Customer (firstName, lastName) VALUES ('don', 'hm');

SELECT * FROM mytable28Customer;

INSERT INTO mytable29Tel (customerId, tel) VALUES ('1', '01099999999');
INSERT INTO mytable29Tel (customerId, tel) VALUES ('2', '01088888888');
INSERT INTO mytable29Tel (customerId, tel) VALUES ('1', '01077777777');
INSERT INTO mytable29Tel (customerId, tel) VALUES ('2', '01088888888');

SELECT * FROM mytable29Tel;

INSERT INTO mytable29Tel (customerId, tel) VALUES ('3', '01066666666');	-- 참조키가 존재하지 않는 오류발생

-- 삭제
DELETE FROM mytable28Customer WHERE id = 2; -- 전화번호 테이블에서 참조하는 중이어서 삭제 안됨

DELETE FROM mytable29Tel WHERE customerId = 2;
DELETE FROM mytable28Customer WHERE id = 2;

SELECT * FROM mytable29Tel;
SELECT * FROM mytable28Customer;

-- foreing key 제약사항 삭제
SHOW CREATE TABLE mytable29Tel;
'CREATE TABLE `mytable29Tel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `mytable29Tel_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `mytable28Customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci';

ALTER TABLE mytable29Tel DROP FOREIGN KEY mytable29Tel_ibfk_1;

-- 제약사항 삭제 후 고객테이블 먼저 삭제
DELETE FROM mytable28Customer WHERE id = 1;
SELECT * FROM mytable28Customer;
SELECT * FROM mytable29Tel;
