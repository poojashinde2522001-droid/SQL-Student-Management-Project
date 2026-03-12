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

CREATE TABLE Courses(
CourseID INT PRIMARY KEY,
CourseName VARCHAR(50)
);

CREATE TABLE Enrollments(
EnrollID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Courses VALUES
(101,'SQL'),
(102,'Python'),
(103,'Power BI');

INSERT INTO Enrollments VALUES
(1,1,101),
(2,2,102),
(3,3,103);


SELECT S.Name, C.CourseName
FROM Students S
JOIN Enrollments E ON S.StudentID = E.StudentID
JOIN Courses C ON E.CourseID = C.CourseID;
