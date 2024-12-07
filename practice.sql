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


-- STRING FUNCTION:

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

-- use book_shop;
-- SELECT DATABASE();
-- SELECT SUBSTR(title,1,15)FROM books;
-- SELECT SUBSTR(title,1,9)AS 'Short Title' FROM books;

-- #COMBINING CONCAT AND SUBSTRING
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
-- SELECT REPLACE('I am sahil','sahil','MR.Tapkir');
-- SELECT REPLACE(title,' ','-')AS 'title with - ' FROM books;

--REVERSE
--  SELECT REVERSE('abc');
-- SELECT CONCAT(
--     author_fname,
--     REVERSE(author_fname)
-- )AS 'palindrom' FROM books;

-- --#CHAR_LENGTH:
-- SELECT CHAR_LENGTH('hello');
-- SELECT LENGTH('hello');
-- SELECT CHAR_LENGTH(author_fname) AS 'length',author_fname FROM books;
-- SELECT CONCAT(
--     title,
--     ' IS ',
--     CHAR_LENGTH(title),
--     ' CHARACTER LONG.'
-- ) AS 'Title Length'
-- FROM books;

-- --UPPER AND LOWER::
-- SELECT UCASE('str');
-- SELECT LCASE('STR');
-- SELECT UPPER(title)FROM books;
-- SELECT CONCAT(
--     'I Love This Book ',
--     UPPER(title)
-- )AS 'Books' FROM books;

-- -- OTHER STRING FUNCTIONS:
-- SELECT INSERT('Hello World',6,0,' There');
-- SELECT INSERT(title,1,0,'HELLO ') FROM books;
-- SELECT LEFT(title,5) FROM books;
-- SELECT RIGHT(title,4) FROM books;
-- SELECT REPEAT(title,2) FROM books;
-- SELECT TRIM(LEADING '.' FROM '.......gsrgsrg...');
-- SELECT TRIM(BOTH '.' FROM '.......gsrgsrg...');
-- SELECT TRIM(TRAILING '.' FROM '.......gsrgsrg...');

-- String Function Excercise:

-- SELECT REVERSE(
--     UCASE('Why does my cat look at me with such hatred?')
-- );
-- SELECT REPLACE
-- (
--         CONCAT('I', ' ', 'Like', ' ', 'Cats'),
--         ' ',
--         '-'
-- );

-- use book_shop;
-- SELECT DATABASE();
-- SELECT REPLACE(title,' ','->')AS 'title' FROM books;
-- SELECT * FROM books;
-- SELECT author_lname AS 'Forwards',REVERSE(author_lname)AS 'Backwards' FROM books;
-- SELECT UPPER(
--     CONCAT(author_fname,' ',author_lname)
-- )AS 'Full Name In Caps' FROM books;
-- SELECT CONCAT(
--     title,
--     ' Was Released In ',
--     released_year
-- )AS Blurb FROM books;
-- SELECT title,CHAR_LENGTH(title)AS 'Character Count' FROM books;
-- SELECT CONCAT(LEFT(title,10),'...' )AS 'short title',
-- CONCAT(author_lname,',',author_fname) AS author,
-- CONCAT(stock_quantity,' in stock') AS quantity
-- FROM books;

-- --REFINING SELECTIONS:
-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
-- SELECT * FROM books;
-- USE book_shop;
-- SELECT DATABASE();
-- SELECT * FROM books;

-- --DISTINCT 
-- SELECT DISTINCT author_lname FROM books;
-- SELECT DISTINCT CONCAT(author_fname,' ',author_lname )AS 'author fullname' FROM books;

-- --ORDER BY:
-- SELECT * FROM books ORDER BY author_lname;
-- SELECT title,pages FROM books ORDER BY pages DESC;
-- SELECT title , released_year FROM books ORDER BY released_year;
-- SELECT author_fname,released_year,title
-- FROM books 
-- ORDER BY author_fname ,released_year DESC;

-- --LIMIT:

-- SELECT title,released_year FROM books
-- ORDER BY released_year
-- LIMIT 5;
-- SELECT title,released_year FROM books
-- ORDER BY released_year DESC
-- LIMIT 3,10;
-- SELECT title,released_year FROM books ORDER BY released_year DESC;

-- --LIKE :

-- SELECT  author_fname,title FROM books WHERE author_fname LIKE '%da%';
-- SELECT author_fname, title FROM books WHERE author_fname LIKE '___';

-- -- ESCAPING WILDDCARDS:
-- SELECT title FROM books WHERE title LIKE '%\%%';
-- SELECT title FROM books WHERE title LIKE '%\_%';

-- --REFINING SELECTIONS EXCERCISE:

-- SELECT title FROM books WHERE title LIKE '%stories%';
-- SELECT title,pages FROM books ORDER BY pages DESC LIMIT 0,1;
-- SELECT CONCAT(
--     title,' - ',released_year
--     ) AS 'summary'
-- FROM books
-- ORDER BY released_year DESC LIMIT 0,3;
-- SELECT title,author_lname FROM books WHERE author_lname LIKE '% %';
-- SELECT title,released_year,stock_quantity FROM books ORDER BY stock_quantity,title LIMIT 0,3;
-- SELECT title,author_lname FROM books ORDER BY author_lname,title;
-- SELECT UPPER(CONCAT('MY FAVORITE AUTHOR IS ',author_fname,' ',author_lname,' !'))
-- FROM books 
-- ORDER BY author_lname;

-- --AGGREGATE FUNCTION:-
-- --COUNT:

-- SELECT COUNT(*) FROM books;
-- SELECT COUNT(DISTINCT author_fname) FROM books;
-- SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
-- SELECT * FROM books WHERE title LIKE'%the%'; 
-- SELECT released_year,author_lname,count(*)AS 'cot'
-- FROM books
-- GROUP BY author_lname,released_year
-- ORDER BY released_year DESC;

-- SELECT author_fname,author_lname,count(*)AS 'cot'
-- FROM books
-- GROUP BY author_fname,author_lname;

-- --MAX AND MIN 

-- SELECT MAX(pages) FROM books;
-- SELECT MIN(released_year) FROM books;

-- --SUBQUERY

-- INSERT INTO books(title,pages)
-- VALUES
-- ('MY LIFE',634);

-- SELECT title,pages FROM books 
-- WHERE pages=(SELECT MAX(pages)FROM books);

-- SELECT title,released_year,pages FROM books 
-- WHERE pages=(SELECT MIN(pages)FROM books);

-- SELECT pages FROM books ORDER BY pages;

-- --GROUP BY MULTIPLE COLUMNS:
-- SELECT DATABASE();
-- use book_shop;

-- SELECT DATABASE();

-- SELECT CONCAT(author_fname,' ',author_lname) AS 'author',COUNT(*)
-- FROM books
-- GROUP BY author;

-- -- MIN AND MAX WITH GROUP BY

-- SELECT 
--     author_fname,
--     author_lname,
--     COUNT(*),
--     MAX(released_year)AS latest ,
--     MIN(released_year) earliest,
--     MAX(title)AS 'longest book',
--     MAX(pages) AS 'longest book'
-- FROM books 
-- GROUP BY author_lname,author_fname;

-- --SUM:
-- SELECT SUM(pages) from books;
-- SELECT 
--     author_fname,
--     COUNT(*),
--     SUM(pages)
-- FROM books
-- GROUP BY author_fname;

-- --AVERAGE:
-- SELECT 
--     released_year,
--     AVG(stock_quantity) AS 'average',
--     COUNT(*) AS 'count'
-- FROM books 
-- GROUP BY released_year;

-- --EXCERCISE ON AGGREGATE FUNCTIONS:
-- use book_shop;
-- SELECT COUNT(*)FROM books;
-- SELECT * FROM books;
-- SELECT released_year,COUNT(*) FROM books GROUP BY released_year;
-- SELECT SUM(stock_quantity) FROM books;
-- SELECT 
--     CONCAT(author_fname,' ',author_lname) AS 'author',
--     AVG(released_year)
-- FROM books
-- GROUP BY author;

-- SELECT
--     CONCAT(author_fname,' ',author_lname)AS 'name',
--     title,
--     pages
-- FROM books 
-- WHERE pages=(SELECT MAX(pages) FROM books);

-- DELETE FROM books WHERE title='MY LIFE';

-- SELECT 
--     released_year AS 'year',
--     COUNT(*) AS 'books',
--     AVG(pages) AS 'Average pages'
-- FROM books 
-- GROUP BY released_year
-- ORDER BY released_year;

-- --REVISTING DATATYPES:
-- --WORKING WITH DATA AND TIME

-- CREATE TABLE people(
--     name VARCHAR(50),
--     birthdate DATE,
--     birthtime TIME,
--     birthdt DATETIME
-- );

-- DESC people;
-- INSERT INTO people(name,birthdate,birthtime,birthdt)
-- VALUES
-- ('Elton','2000-12-25','11:00:00','2000-12-25 11:00:00');

-- SELECT * FROM people;

-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
-- INSERT INTO people (name, birthdate, birthtime, birthdt)
-- VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

-- SELECT * FROM people;

-- DELETE FROM people WHERE name='juan';
-- SELECT * FROM people;

-- INSERT INTO people(name,birthdate,birthtime,birthdt)
-- VALUES
-- ('Hazel',CURDATE(),CURTIME(),NOW());
-- SELECT * FROM people;

-- --DATE FUNCTIONS
-- SELECT name,birthdate,birthtime,DAY(birthdt),DAYNAME(birthdt),DAYOFYEAR(birthdt),MONTHNAME(birthdt),YEAR(birthdt)
-- FROM people;

-- --TIME FUNTIONS:
-- SELECT name,birthdate,birthtime,HOUR(birthdt),MINUTE(birthdt),SECOND(birthdt)
-- FROM people;

-- --DATE AND TIME FORMATING:

-- SELECT birthdate,DATE_FORMAT(birthdate,'%a %b %e') FROM people;
-- SELECT name,birthdate,DATE_FORMAT(birthdate,'%a %b %e'),birthtime,DATE_FORMAT(birthdt,'%h:%i:%s:%p') FROM people;


-- --DATA TYPES EXCERCISE:

-- SELECT CURTIME();
-- SELECT CURDATE();

-- SELECT DAY(CURDATE());
-- SELECT DAYNAME(CURDATE());
-- SELECT DATE_FORMAT(NOW(),'%c/%d/%Y');

-- SELECT DATE_FORMAT(NOW(),'%M %D at %h:%i');

-- CREATE TABLE tweets(
--     tweet VARCHAR(150),
--     username VARCHAR(150),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- );

-- INSERT INTO tweets(tweet,username)
-- VALUES
-- ('Hello world','xyz');

-- SELECT * FROM tweets;
-- INSERT INTO tweets(tweet,username)
-- VALUES
-- ('HII HELLO WORLD','abc');

-- SELECT * FROM tweets;

-- UPDATE tweets SET tweet='hii world' WHERE username='abc';

-- SELECT * FROM tweets;

-- LOGICAL OPERATOR:

SELECT DATABASE();

use book_shop;
SELECT DATABASE();

-- Logical AND:
SELECT author_fname,author_lname,title,pages,released_year
FROM books
WHERE pages>300 AND released_year>=2001;

--LOGICAL OR:
SELECT * FROM books WHERE pages>=500 OR title NOT LIKE '% %';