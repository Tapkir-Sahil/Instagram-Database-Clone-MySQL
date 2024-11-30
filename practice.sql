-- Active: 1732949880220@@127.0.0.1@3306@practice1
use practice1;
 
 SELECT DATABASE();

DROP TABLE cats;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

DESC cats;



-- Rapid Excersie Questions update from practice
-- SELECT * from cats;

-- SELECT name , age from cats;

-- SELECT name,breed from cats;

-- select cat_id from cats;

-- SELECT name,breed from cats;

-- SELECT * from cats WHERE breed='tabby';

-- SELECT name,age from cats WHERE breed='tabby';

-- SELECT cat_id , age from cats WHERE cat_id=age;

-- SELECT * FROM cats WHERE cat_id=age;


-- ALias name

