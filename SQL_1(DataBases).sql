CREATE DATABASE College;
USE College;
CREATE TABLE Students(
	RollNO INT,
    Name VARCHAR(30),
    Age INT
);
INSERT INTO Students
VALUES
(101,"BOB",25),
(102,"Nam",23);
SELECT * FROM Students;
