-- Active: 1734266130866@@127.0.0.1@3306@practice1
Active: 1732949880220@@127.0.0.1@3306@practice1
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



--Rapid Excersie Questions update from practice:-

SELECT * from cats;
SELECT name , age from cats;
SELECT name,breed from cats;
select cat_id from cats;
SELECT name,breed from cats;
SELECT * from cats WHERE breed='tabby';
SELECT name,age from cats WHERE breed='tabby';
SELECT cat_id , age from cats WHERE cat_id=age;
SELECT * FROM cats WHERE cat_id=age;


ALIAS NAME QUERYS
SELECT cat_id AS ID, name from cats;


UPDATE PRACTICE QUERY:-

UPDATE cats SET age=14 WHERE name='misty';
SELECT * FROM cats;
UPDATE cats SET name='jack' WHERE name='jackson';
SELECT * FROM cats WHERE name='ringo';
UPDATE cats SET breed='British ShortHair' WHERE name='ringo';
SELECT * FROM cats;
UPDATE cats SET age=12 WHERE breed='maine coon';
SELECT * FROM cats;

Delete Queries:-
 DELETE FROM cats WHERE age=4;
 SELECT * FROM cats;
SELECT * FROM cats WHERE age=cat_id;
DELETE FROM cats WHERE age= cat_id;
SELECT * FROM cats;
DELETE FROM cats;
SELECT * FROM cats;
DESC cats;

--Super Crud Excercise

CREATE DATABASE shirts_db;

USE shirts_db;
SELECT DATABASE();

CREATE TABLE shirts(
    shirt_id INT AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(30),
    color VARCHAR(30),
    shirt_size VARCHAR(30),
    last_worn INT
);

DESC shirts;

INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

SELECT * FROM shirts;
INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES
('polo shirt','purple','M',50);
SELECT * FROM shirts;
SELECT article,color FROM shirts;
SELECT article,color,shirt_size,last_worn FROM shirts WHERE shirt_size='M';
SELECT * FROM shirts;
UPDATE shirts SET last_worn=0 WHERE last_worn=15;
SELECT * FROM shirts;
UPDATE shirts SET shirt_size='XS' , color='off white' WHERE color='white';
SELECT * FROM shirts;
DELETE FROM shirts WHERE last_worn=200;
SELECT * from shirts;
DELETE FROM shirts WHERE article='tank top';
SELECT * FROM shirts;
DELETE FROM shirts;
SELECT * FROM shirts;
DESC shirts;
DROP TABLE shirts;
 SELECT * FROM shirts;


--STRING FUNCTION:

CREATE DATABASE book_shop;
USE book_shop;
SELECT DATABASE();
SHOW TABLES;
SELECT * FROM books;
DESC books;
SELECT DATABASE();
USE book_shop;
SELECT DATABASE();
SELECT * FROM books;
DESC books;
SELECT DATABASE();
USE book_shop;
SELECT DATABASE();
DESC books;
SELECT * FROM books;

#CONCAT FUNCTION

SELECT CONCAT(author_fname ,author_lname) FROM books;
SELECT CONCAT(author_fname,' ',author_lname) FROM books;
SELECT CONCAT_WS('-',author_fname,author_lname) AS "author full name" FROM books;

#SUBSTRING

use book_shop;
SELECT DATABASE();
SELECT SUBSTR(title,1,15)FROM books;
SELECT SUBSTR(title,1,9)AS 'Short Title' FROM books;

#COMBINING CONCAT AND SUBSTRING
SELECT CONCAT(SUBSTR(title,1,9),'...')AS 'Short Title' FROM books;
SELECT CONCAT(
    SUBSTR(author_fname,1,1),
    '.',
    SUBSTR(author_lname,1,1),
    '.',
    SUBSTR(title,1,9)
)AS 'Author And Title'
FROM books;

#REPLACE
SELECT REPLACE('I am sahil','sahil','MR.Tapkir');
SELECT REPLACE(title,' ','-')AS 'title with - ' FROM books;

REVERSE
 SELECT REVERSE('abc');
SELECT CONCAT(
    author_fname,
    REVERSE(author_fname)
)AS 'palindrom' FROM books;

--#CHAR_LENGTH:
SELECT CHAR_LENGTH('hello');
SELECT LENGTH('hello');
SELECT CHAR_LENGTH(author_fname) AS 'length',author_fname FROM books;
SELECT CONCAT(
    title,
    ' IS ',
    CHAR_LENGTH(title),
    ' CHARACTER LONG.'
) AS 'Title Length'
FROM books;

--UPPER AND LOWER::
SELECT UCASE('str');
SELECT LCASE('STR');
SELECT UPPER(title)FROM books;
SELECT CONCAT(
    'I Love This Book ',
    UPPER(title)
)AS 'Books' FROM books;

-- OTHER STRING FUNCTIONS:
SELECT INSERT('Hello World',6,0,' There');
SELECT INSERT(title,1,0,'HELLO ') FROM books;
SELECT LEFT(title,5) FROM books;
SELECT RIGHT(title,4) FROM books;
SELECT REPEAT(title,2) FROM books;
SELECT TRIM(LEADING '.' FROM '.......gsrgsrg...');
SELECT TRIM(BOTH '.' FROM '.......gsrgsrg...');
SELECT TRIM(TRAILING '.' FROM '.......gsrgsrg...');

String Function Excercise:

SELECT REVERSE(
    UCASE('Why does my cat look at me with such hatred?')
);
SELECT REPLACE
(
        CONCAT('I', ' ', 'Like', ' ', 'Cats'),
        ' ',
        '-'
);

use book_shop;
SELECT DATABASE();
SELECT REPLACE(title,' ','->')AS 'title' FROM books;
SELECT * FROM books;
SELECT author_lname AS 'Forwards',REVERSE(author_lname)AS 'Backwards' FROM books;
SELECT UPPER(
    CONCAT(author_fname,' ',author_lname)
)AS 'Full Name In Caps' FROM books;
SELECT CONCAT(
    title,
    ' Was Released In ',
    released_year
)AS Blurb FROM books;
SELECT title,CHAR_LENGTH(title)AS 'Character Count' FROM books;
SELECT CONCAT(LEFT(title,10),'...' )AS 'short title',
CONCAT(author_lname,',',author_fname) AS author,
CONCAT(stock_quantity,' in stock') AS quantity
FROM books;

--REFINING SELECTIONS:
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
SELECT * FROM books;
USE book_shop;
SELECT DATABASE();
SELECT * FROM books;

--DISTINCT 
SELECT DISTINCT author_lname FROM books;
SELECT DISTINCT CONCAT(author_fname,' ',author_lname )AS 'author fullname' FROM books;

--ORDER BY:
SELECT * FROM books ORDER BY author_lname;
SELECT title,pages FROM books ORDER BY pages DESC;
SELECT title , released_year FROM books ORDER BY released_year;
SELECT author_fname,released_year,title
FROM books 
ORDER BY author_fname ,released_year DESC;

--LIMIT:

SELECT title,released_year FROM books
ORDER BY released_year
LIMIT 5;
SELECT title,released_year FROM books
ORDER BY released_year DESC
LIMIT 3,10;
SELECT title,released_year FROM books ORDER BY released_year DESC;

--LIKE :

SELECT  author_fname,title FROM books WHERE author_fname LIKE '%da%';
SELECT author_fname, title FROM books WHERE author_fname LIKE '___';

-- ESCAPING WILDDCARDS:
SELECT title FROM books WHERE title LIKE '%\%%';
SELECT title FROM books WHERE title LIKE '%\_%';

--REFINING SELECTIONS EXCERCISE:

SELECT title FROM books WHERE title LIKE '%stories%';
SELECT title,pages FROM books ORDER BY pages DESC LIMIT 0,1;
SELECT CONCAT(
    title,' - ',released_year
    ) AS 'summary'
FROM books
ORDER BY released_year DESC LIMIT 0,3;
SELECT title,author_lname FROM books WHERE author_lname LIKE '% %';
SELECT title,released_year,stock_quantity FROM books ORDER BY stock_quantity,title LIMIT 0,3;
SELECT title,author_lname FROM books ORDER BY author_lname,title;
SELECT UPPER(CONCAT('MY FAVORITE AUTHOR IS ',author_fname,' ',author_lname,' !'))
FROM books 
ORDER BY author_lname;

--AGGREGATE FUNCTION:-
--COUNT:

SELECT COUNT(*) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
SELECT * FROM books WHERE title LIKE'%the%'; 
SELECT released_year,author_lname,count(*)AS 'cot'
FROM books
GROUP BY author_lname,released_year
ORDER BY released_year DESC;

SELECT author_fname,author_lname,count(*)AS 'cot'
FROM books
GROUP BY author_fname,author_lname;

--MAX AND MIN 

SELECT MAX(pages) FROM books;
SELECT MIN(released_year) FROM books;

--SUBQUERY

INSERT INTO books(title,pages)
VALUES
('MY LIFE',634);

SELECT title,pages FROM books 
WHERE pages=(SELECT MAX(pages)FROM books);

SELECT title,released_year,pages FROM books 
WHERE pages=(SELECT MIN(pages)FROM books);

SELECT pages FROM books ORDER BY pages;

--GROUP BY MULTIPLE COLUMNS:
SELECT DATABASE();
use book_shop;

SELECT DATABASE();

SELECT CONCAT(author_fname,' ',author_lname) AS 'author',COUNT(*)
FROM books
GROUP BY author;

-- MIN AND MAX WITH GROUP BY

SELECT 
    author_fname,
    author_lname,
    COUNT(*),
    MAX(released_year)AS latest ,
    MIN(released_year) earliest,
    MAX(title)AS 'longest book',
    MAX(pages) AS 'longest book'
FROM books 
GROUP BY author_lname,author_fname;

--SUM:
SELECT SUM(pages) from books;
SELECT 
    author_fname,
    COUNT(*),
    SUM(pages)
FROM books
GROUP BY author_fname;

--AVERAGE:
SELECT 
    released_year,
    AVG(stock_quantity) AS 'average',
    COUNT(*) AS 'count'
FROM books 
GROUP BY released_year;

--EXCERCISE ON AGGREGATE FUNCTIONS:
use book_shop;
SELECT COUNT(*)FROM books;
SELECT * FROM books;
SELECT released_year,COUNT(*) FROM books GROUP BY released_year;
SELECT SUM(stock_quantity) FROM books;
SELECT 
    CONCAT(author_fname,' ',author_lname) AS 'author',
    AVG(released_year)
FROM books
GROUP BY author;

SELECT
    CONCAT(author_fname,' ',author_lname)AS 'name',
    title,
    pages
FROM books 
WHERE pages=(SELECT MAX(pages) FROM books);

DELETE FROM books WHERE title='MY LIFE';

SELECT 
    released_year AS 'year',
    COUNT(*) AS 'books',
    AVG(pages) AS 'Average pages'
FROM books 
GROUP BY released_year
ORDER BY released_year;

--REVISTING DATATYPES:
--WORKING WITH DATA AND TIME

CREATE TABLE people(
    name VARCHAR(50),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

DESC people;
INSERT INTO people(name,birthdate,birthtime,birthdt)
VALUES
('Elton','2000-12-25','11:00:00','2000-12-25 11:00:00');

SELECT * FROM people;

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT * FROM people;

DELETE FROM people WHERE name='juan';
SELECT * FROM people;

INSERT INTO people(name,birthdate,birthtime,birthdt)
VALUES
('Hazel',CURDATE(),CURTIME(),NOW());
SELECT * FROM people;

--DATE FUNCTIONS
SELECT name,birthdate,birthtime,DAY(birthdt),DAYNAME(birthdt),DAYOFYEAR(birthdt),MONTHNAME(birthdt),YEAR(birthdt)
FROM people;

--TIME FUNTIONS:
SELECT name,birthdate,birthtime,HOUR(birthdt),MINUTE(birthdt),SECOND(birthdt)
FROM people;

--DATE AND TIME FORMATING:

SELECT birthdate,DATE_FORMAT(birthdate,'%a %b %e') FROM people;
SELECT name,birthdate,DATE_FORMAT(birthdate,'%a %b %e'),birthtime,DATE_FORMAT(birthdt,'%h:%i:%s:%p') FROM people;


--DATA TYPES EXCERCISE:

SELECT CURTIME();
SELECT CURDATE();

SELECT DAY(CURDATE());
SELECT DAYNAME(CURDATE());
SELECT DATE_FORMAT(NOW(),'%c/%d/%Y');

SELECT DATE_FORMAT(NOW(),'%M %D at %h:%i');

CREATE TABLE tweets(
    tweet VARCHAR(150),
    username VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO tweets(tweet,username)
VALUES
('Hello world','xyz');

SELECT * FROM tweets;
INSERT INTO tweets(tweet,username)
VALUES
('HII HELLO WORLD','abc');

SELECT * FROM tweets;

UPDATE tweets SET tweet='hii world' WHERE username='abc';

SELECT * FROM tweets;

--LOGICAL OPERATOR:

SELECT DATABASE();

use book_shop;
SELECT DATABASE();

-- Logical AND:
SELECT author_fname,author_lname,title,pages,released_year
FROM books
WHERE pages>300 AND released_year>=2001;

--LOGICAL OR:
SELECT * FROM books WHERE pages>=500 OR title NOT LIKE '% %';

-- BETTWEEN OPERATOR:-
use book_shop;
SELECT title,released_year FROM books
WHERE released_year BETWEEN 2001 AND 2022;

--COMPARING DATES:
-- REFER AN DOCUMENTAION OF MYSQL

--IN AND NOT IN OPERATOR:
SELECT title,released_year,pages FROM books WHERE released_year IN (2001,2003,2005) ORDER BY released_year;
SELECT title,released_year,pages FROM books WHERE released_year NOT IN (2001,2003,2005) ORDER BY released_year;

--CASE OPERATOR:

SELECT title, released_year,
CASE
	WHEN released_year >= 2000 THEN 'modern lit'
    ELSE '20th century lit' 
END AS genre
FROM books;
 
 
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
 
 
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;

--OPERATORS EXCERCISE:-

SELECT 10 != 10;
SELECT 15 > 14 AND 99 - 5 <= 94;
SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10;
USE book_shop;
SELECT DATABASE();
SELECT * FROM books WHERE released_year < 1980;
SELECT * FROM books WHERE author_lname IN ('Eggers','Chabon');
SELECT * FROM books WHERE author_lname='Lahiri' AND released_year > 2000;
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
SELECT * FROM books WHERE author_lname LIKE 'S%' OR author_lname LIKE 'C%';

SELECT title,author_lname,
CASE 
    WHEN title LIKE '%stories%' THEN 'Short stories'
    WHEN title LIKE 'just kids' OR title LIKE '%a heartbreaking work%' THEN 'Memoir'
    ELSE  'Novel'
END AS 'Type'
FROM books

SELECT CONCAT(author_fname,' ',author_lname)AS 'author',CONCAT(COUNT(*),' books') AS 'books'
FROM books GROUP BY author;
-- ANOTHER WAY TO EXECUTE THE ABOVE QUERY
SELECT author_fname, author_lname,
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;

--CONSTRAINTS AND ALTER TABLE:
--UNIQUE CONSTRAINT:
DROP TABLE contacts;
CREATE Table contacts(
    name VARCHAR(20),
    phone VARCHAR(20) NOT NULL UNIQUE
);
DESC contacts;
INSERT INTO contacts(name,phone)
VALUES
('cavdvz','23456789');
SELECT * FROM contacts;
--CHECK CONSTRAINT:
CREATE TABLE users(
    username VARCHAR(20),
    age INT CHECK(age>18)
);

INSERT INTO users(username,age)
VALUES
('Siddya',22),
('Sanjay',23);
SELECT * FROM users;
INSERT INTO users(username,age)
VALUES
('atharva',19);
DELETE FROM users WHERE age=19;
SELECT * FROM users;

--NAMED CONSTRAINT:

CREATE TABLE palindrom(
    words VARCHAR(100),
    CONSTRAINT word_is_not_palindrom CHECK(REVERSE(words)=words)
);

INSERT INTO palindrom(words)
VALUES
('racecar');
SELECT * FROM palindrom;
DROP TABLE com;
CREATE TABLE com(
    comname VARCHAR(20) NOT NULL,
    address VARCHAR(49) NOT NULL,
    CONSTRAINT already_exsist UNIQUE(comname,address)
);

INSERT INTO com(comname,address)
VALUES
('abc','xyz'),
('xyz','abc');

INSERT INTO com(comname,address)
VALUES
('abc','xyz');

-- ALTER TABLE: ADDING-COLUMNS
ALTER TABLE com
ADD COLUMN phone INT NOT NULL DEFAULT 1;
SELECT * FROM com;

--ALTER TABLE: DROPING-COLUMNS
ALTER TABLE com DROP COLUMN phone;
SELECT * FROM com;
ALTER TABLE com RENAME TO companies;
SELECT * FROM companies;
ALTER TABLE companies
RENAME COLUMN comname TO company_name;

--ALTER TABLE : MODIFY COLUMNS
ALTER TABLE companies
MODIFY company_name VARCHAR(5);
ALTER TABLE companies
CHANGE company_name company_UN VARCHAR(25);
DESC companies;

-- ONE TO MANY JOINS:
-- Working With Foreign Key:

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

 
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
SELECT * from customers;
 
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

SELECT * FROM orders;
INSERT INTO orders(order_date,amount,customer_id)
VALUES
('2022-11-11',78.99,3);
--Cross Joins:
SELECT * FROM customers,orders;

--INNER JOIN

SELECT first_name,last_name,order_date,amount FROM customers
INNER JOIN orders ON orders.customer_id=customers.id;

SELECT * FROM orders
INNER JOIN customers ON customers.id=orders.customer_id;

-- INNER JOIN WITH GROUPS:

SELECT first_name,last_name,SUM(amount) AS 'total' 
FROM customers
INNER JOIN orders ON orders.customer_id=customers.id
GROUP BY first_name,last_name
ORDER BY total DESC;

--LEFT JOIN:
 SELECT first_name,last_name,amount
 FROM customers
LEFT JOIN orders ON orders.customer_id=customers.id;

--LEFT JOIN WITH GROUP BY AND IFNULL:

SELECT first_name,last_name,IFNULL(sum(amount),0) AS'total'
FROM customers
LEFT JOIN orders ON customers.id=orders.customer_id
GROUP BY first_name,last_name ORDER BY total;

--RIGHT JOIN:
SELECT first_name,last_name,amount FROM customers
INNER JOIN orders ON orders.customer_id=customers.id;

SELECT first_name,last_name,amount FROM orders
RIGHT JOIN customers ON orders.customer_id=customers.id;

--ON DELETE CASCADE
DELETE FROM customers WHERE first_name='Boy';
DROP TABLE customers;
DROP TABLE orders;
DROP TABLE customers;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);

 
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');

SELECT * FROM customers;

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

SELECT * FROM orders;

DELETE FROM customers WHERE first_name='boy';
SELECT * FROM orders;



-- JOINS EXCERCISE:
CREATE TABLE students(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(25)
);

INSERT INTO students (first_name) 
VALUES 
('Caleb'),
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');

SELECT * FROM students;

CREATE TABLE papers(
    title VARCHAR(100),
    grade INT,
    student_id INT,
    Foreign Key (student_id) REFERENCES students(id) ON DELETE CASCADE
);
INSERT INTO papers (student_id, title, grade ) 
VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);
SELECT * FROM papers;

SELECT first_name,title,grade
FROM students
INNER JOIN papers ON papers.student_id=students.id;

SELECT first_name,title,grade 
FROM students
LEFT JOIN papers ON papers.student_id=students.id;

SELECT first_name,IFNULL(title,'MISSING') AS title,IFNULL(grade,0) AS grade
FROM students
LEFT JOIN papers ON papers.student_id=students.id;

SELECT first_name,IFNULL(AVG(grade),'0') AS 'grade'
FROM students
LEFT JOIN papers ON papers.student_id=students.id
GROUP BY first_name ORDER BY grade DESC;

SELECT 
    first_name,
    IFNULL(AVG(grade),'0') AS 'Grade',
    CASE 
        WHEN IFNULL(AVG(grade),'0') >= 75 THEN  'Passing'
        ELSE  'Failing'
    END AS 'Passing_Status'
FROM students
LEFT JOIN papers ON papers.student_id=students.id
GROUP BY first_name ORDER BY Grade DESC;

--MANY TO MANY RELATIONSHIP:

SHOW TABLES;
DROP TABLES cats,users,tweets,people,palindrom;
SHOW TABLES;
DROP TABLE companies,contacts,customers,orders;
SHOW TABLES;

CREATE TABLE reviewers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL
);

CREATE TABLE series(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    released_year YEAR,
    genre VARCHAR(50)
);

CREATE TABLE reviews(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rating DECIMAL(2,1),
    series_id INT,
    reviewers_id INT,
    Foreign Key (series_id) REFERENCES series(id),
    Foreign Key (reviewers_id) REFERENCES reviewers(id)
);

SHOW TABLES;
DESC reviews;

INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');
 
 
INSERT INTO reviewers (fname, lname) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
    
 
INSERT INTO reviews(series_id, reviewers_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);

SELECT * FROM series;
SELECT * FROM reviewers;
SELECT * FROM reviews;

--CHALLENGE 1:
SELECT title,rating FROM series
INNER JOIN reviews ON reviews.series_id=series.id;

--CHALLENGE 2:
SELECT title,ROUND(AVG(rating),2) AS 'average_rating' FROM series
INNER JOIN reviews ON reviews.series_id=series.id
GROUP BY title ORDER BY average_rating;

--CHALLENGE 3:
SELECT fname,lname,rating FROM reviewers
INNER JOIN reviews ON reviews.reviewers_id=reviewers.id;

--CHALLENGE 4:
SELECT title AS 'Unreviewed Title' FROM series
LEFT JOIN reviews ON reviews.series_id=series.id
WHERE rating IS NULL;

--CHALLENGE 5:
SELECT genre,ROUND(AVG(rating),2) FROM series
INNER JOIN reviews ON reviews.series_id=series.id
GROUP BY genre;
