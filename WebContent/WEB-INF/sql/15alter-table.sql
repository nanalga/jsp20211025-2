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

ALTER TABLE mytable21Student DROP COLUMN foot;

-- AFTER BEFORE
ALTER TABLE mytable21Student ADD foot DOUBLE AFTER name;
DESC mytable21Student;