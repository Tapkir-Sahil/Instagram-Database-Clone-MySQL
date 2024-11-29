-- Active: 1732889674886@@127.0.0.1@3306@instagram
CREATE Table User(
    User_ID INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(20),
    Email VARCHAR(20),
    Age INT
);

DESC User;