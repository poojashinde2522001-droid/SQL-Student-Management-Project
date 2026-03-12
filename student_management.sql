CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students(
StudentID INT PRIMARY KEY,
Name VARCHAR(50),
Age INT,
City VARCHAR(50)
);

INSERT INTO Students VALUES
(1,'Rahul',21,'Pune'),
(2,'Sneha',22,'Mumbai'),
(3,'Amit',20,'Kolhapur');

SELECT * FROM Students;