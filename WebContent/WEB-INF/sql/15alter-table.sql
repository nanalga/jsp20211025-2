USE test;

DESC mytable21Student;

-- add column
ALTER TABLE mytable21Student ADD COLUMN (
	height DOUBLE
);

ALTER TABLE mytable21Student ADD COLUMN (
	weight DOUBLE,
    foot DOUBLE
);

-- add constraints
ALTER TABLE mytable21Student MODIFY COLUMN
	height DOUBLE NOT NULL
;