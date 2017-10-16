ALTER TABLE developers ADD COLUMN salary INT;

UPDATE developers SET salary = 2000 WHERE id = 1;
UPDATE developers SET salary = 1000 WHERE id = 2;
UPDATE developers SET salary = 2500 WHERE id = 3;
UPDATE developers SET salary = 2000 WHERE id = 4;
UPDATE developers SET salary = 1000 WHERE id = 5;