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

