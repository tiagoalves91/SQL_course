// decimal NUMBERS

CREATE TABLE thingies (price FLOAT);
 
INSERT INTO thingies(price) VALUES (88.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877.45);
 
SELECT * FROM thingies;
 
INSERT INTO thingies(price) VALUES (8877665544.45);
 
SELECT * FROM thingies;

# //DATES & TIMES;

DATE  (WITH NO TIMES)

VALUES 'YYYY-MM-DD'

TIME (WITH NO DATE)

VALUES 'HH-MM-SS'

DATETIME (DATE AND TIME) most useful

VALUES 'YYYY-MM-DD HH-MM-SS'


CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people (name, birthdate, birthtime,birthdt)
VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
    
INSERT INTO people (name, birthdate, birthtime,birthdt)
VALUES ('Tiago ALVES', '1991-01-11', '03:07:35', '1991-01-11 03:07:35');

INSERT INTO people (name, birthdate,birthtime,birthdt) VALUES
('armin', CURDATE(), CURTIME(), NOW());


SELECT name, DAYOFYEAR(birthdate) FROM people;


SELECT name, birthdate FROM people;
 
SELECT name, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAY(birthdate) FROM people;
 
SELECT name, birthdate, DAYNAME(birthdate) FROM people;
 
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
 
SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;
 
SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;
 
SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
 
SELECT name, birthdt, MONTH(birthdt) FROM people;
 
SELECT name, birthdt, MONTHNAME(birthdt) FROM people;
 
SELECT name, birthtime, HOUR(birthtime) FROM people;
 
SELECT name, birthtime, MINUTE(birthtime) FROM people;
 
SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) FROM people;
 
SELECT DATE_FORMAT(birthdt, 'Was born on a %W') FROM people;
 
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
 
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;







    
    