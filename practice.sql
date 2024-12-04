-- Active: 1732949880220@@127.0.0.1@3306@practice1
-- use practice1; 
--  SELECT DATABASE();
-- DROP TABLE cats;
-- CREATE TABLE cats (
--     cat_id INT AUTO_INCREMENT,
--     name VARCHAR(100),
--     breed VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- ); 

-- INSERT INTO cats(name, breed, age) 
-- VALUES ('Ringo', 'Tabby', 4),
--        ('Cindy', 'Maine Coon', 10),
--        ('Dumbledore', 'Maine Coon', 11),
--        ('Egg', 'Persian', 4),
--        ('Misty', 'Tabby', 13),
--        ('George Michael', 'Ragdoll', 9),
--        ('Jackson', 'Sphynx', 7);

-- DESC cats;



-- Rapid Excersie Questions update from practice:-

-- SELECT * from cats;
-- SELECT name , age from cats;
-- SELECT name,breed from cats;
-- select cat_id from cats;
-- SELECT name,breed from cats;
-- SELECT * from cats WHERE breed='tabby';
-- SELECT name,age from cats WHERE breed='tabby';
-- SELECT cat_id , age from cats WHERE cat_id=age;
-- SELECT * FROM cats WHERE cat_id=age;


-- ALIAS NAME QUERYS
--SELECT cat_id AS ID, name from cats;


-- UPDATE PRACTICE QUERY:-

--UPDATE cats SET age=14 WHERE name='misty';
--SELECT * FROM cats;
-- UPDATE cats SET name='jack' WHERE name='jackson';
-- SELECT * FROM cats WHERE name='ringo';
-- UPDATE cats SET breed='British ShortHair' WHERE name='ringo';
-- SELECT * FROM cats;
-- UPDATE cats SET age=12 WHERE breed='maine coon';
-- SELECT * FROM cats;

-- Delete Queries:-
--  DELETE FROM cats WHERE age=4;
--  SELECT * FROM cats;
-- SELECT * FROM cats WHERE age=cat_id;
-- DELETE FROM cats WHERE age= cat_id;
-- SELECT * FROM cats;
-- DELETE FROM cats;
-- SELECT * FROM cats;
-- DESC cats;

--Super Crud Excercise

-- CREATE DATABASE shirts_db;

-- USE shirts_db;
-- SELECT DATABASE();

-- CREATE TABLE shirts(
--     shirt_id INT AUTO_INCREMENT PRIMARY KEY,
--     article VARCHAR(30),
--     color VARCHAR(30),
--     shirt_size VARCHAR(30),
--     last_worn INT
-- );

-- DESC shirts;

-- INSERT INTO shirts(article,color,shirt_size,last_worn)
-- VALUES
-- ('t-shirt', 'white', 'S', 10),
-- ('t-shirt', 'green', 'S', 200),
-- ('polo shirt', 'black', 'M', 10),
-- ('tank top', 'blue', 'S', 50),
-- ('t-shirt', 'pink', 'S', 0),
-- ('polo shirt', 'red', 'M', 5),
-- ('tank top', 'white', 'S', 200),
-- ('tank top', 'blue', 'M', 15);

-- SELECT * FROM shirts;
-- INSERT INTO shirts(article,color,shirt_size,last_worn)
-- VALUES
-- ('polo shirt','purple','M',50);
-- SELECT * FROM shirts;
-- SELECT article,color FROM shirts;

-- SELECT article,color,shirt_size,last_worn FROM shirts WHERE shirt_size='M';

-- SELECT * FROM shirts;

-- UPDATE shirts SET last_worn=0 WHERE last_worn=15;

-- SELECT * FROM shirts;

-- UPDATE shirts SET shirt_size='XS' , color='off white' WHERE color='white';
-- SELECT * FROM shirts;
-- DELETE FROM shirts WHERE last_worn=200;
-- SELECT * from shirts;
-- DELETE FROM shirts WHERE article='tank top';

-- SELECT * FROM shirts;
-- DELETE FROM shirts;
-- SELECT * FROM shirts;
-- DESC shirts;
-- DROP TABLE shirts;
--  SELECT * FROM shirts;


-- STRING FUNCTION
-- CREATE DATABASE book_shop;
-- USE book_shop;
-- SELECT DATABASE();
-- SHOW TABLES;
-- SELECT * FROM books;
-- DESC books;
-- SELECT DATABASE();
-- USE book_shop;
-- SELECT DATABASE();
-- SELECT * FROM books;
-- DESC books;
-- SELECT DATABASE();
-- USE book_shop;
-- SELECT DATABASE();
-- DESC books;
-- SELECT * FROM books;

-- #CONCAT FUNCTION

-- SELECT CONCAT(author_fname ,author_lname) FROM books;
-- SELECT CONCAT(author_fname,' ',author_lname) FROM books;
-- SELECT CONCAT_WS('-',author_fname,author_lname) AS "author full name" FROM books;

-- #SUBSTRING

use book_shop;
SELECT DATABASE();
SELECT SUBSTR(title,1,15)FROM books;
SELECT SUBSTR(title,1,9)AS 'Short Title' FROM books;

-- #Combining Concat and Substring
-- SELECT CONCAT(SUBSTR(title,1,9),'...')AS 'Short Title' FROM books;
-- SELECT CONCAT(
--     SUBSTR(author_fname,1,1),
--     '.',
--     SUBSTR(author_lname,1,1),
--     '.',
--     SUBSTR(title,1,9)
-- )AS 'Author And Title'
-- FROM books;

-- #REPLACE

SELECT REPLACE(title,' ','-')AS 'title with - ' FROM books;