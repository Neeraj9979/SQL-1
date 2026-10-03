CREATE DATABASE Instagram;
USE Instagram;
CREATE TABLE IF NOT EXISTS User(
	Id INT NOT NULL,
    Age INT,
    Name VARCHAR(30) UNIQUE,
    Email VARCHAR(50) ,
    Followers INT DEFAULT 0,
    Following INT,
    CONSTRAINT age_Check CHECK(Age>=18),
    PRIMARY KEY(Id)
    );


INSERT INTO User
(Id, Age, Name, Email, Followers, Following)
VALUES
(1, 18, "adam", "adam@yahoo.in", 123, 145),
(2, 24, "bob", "bob123@gmail.com", 200, 200),
(3, 20, "casey", "casey@email.com", 300, 306),
(4, 56, "donald", "donald@gmail.com", 200, 105);

SELECT Id,Age,Name FROM User;

SELECT DISTINCT Name FROM User;

SELECT * FROM User;

SELECT * FROM User WHERE Followers >= 200;

SELECT Id,Name,Followers FROM USER WHERE Followers >= 200;

SELECT * FROM User WHERE Age >= 20 AND Followers >= 200;

SELECT * FROM User WHERE Age >=20 OR Followers = 200;

SELECT * FROM User WHERE Email IN ("donald@gmail.com", "casey@email.com");

SELECT * FROM User
LIMIT 2;

SELECT * FROM User WHERE Age >= 20 AND Followers >= 200  LIMIT 2;

SELECT Id,Name FROM User LIMIT 3;

SELECT * FROM User 
ORDER BY Followers;

SELECT * FROM User 
ORDER BY Followers ASC;

SELECT * FROM User 
ORDER BY Followers DESC;

SELECT MAX(Followers)
FROM User;

SELECT MIN(Followers)
FROM User;

SELECT SUM(Followers)
FROM User;

SELECT AVG(Followers)
FROM User;

SELECT COUNT(Age)
FROM User
WHERE Age > 20;

SELECT Age, AVG(Followers)
FROM User 
GROUP BY Age;

SELECT Age, MAX(Followers)
FROM User
GROUP BY Age
HAVING MAX(Followers) >200;

SELECT Age,Max(Followers)
FROM User WHERE Following >= 200
GROUP BY Age
HAVING MAX(Followers)>=200
ORDER BY Age DESC;

SET SQL_SAFE_UPDATES = 0; 

UPDATE User 
SET Followers=123
WHERE Age=18;

UPDATE User 
SET Followers=200
WHERE Age=20;

UPDATE User 
SET Followers=300
WHERE Age=24;

UPDATE User 
SET Followers=200
WHERE Age=56;

DELETE FROM User;

DELETE FROM User
WHERE Age=18;

ALTER  TABLE User
ADD COLUMN City VARCHAR(50) DEFAULT "HYDERABAD";

ALTER TABLE User
DROP COLUMN City;

ALTER TABLE User
RENAME TO InstagramUser;

ALTER TABLE InstagramUser
CHANGE COLUMN Followers Subs INT DEFAULT 0;

ALTER TABLE InstagramUser
MODIFY Subs INT DEFAULT 5;

ALTER TABLE Posts
DROP COLUMN User_Id;

DROP TABLE Posts;

TRUNCATE TABLE InstagramUser;

SELECT * FROM InstagramUser;

DROP TABLE InstagramUser;


SELECT * FROM InstagramUser;

CREATE TABLE IF NOT EXISTS Posts(
	Id INT NOT NULL PRIMARY KEY,
    Content VARCHAR(100) UNIQUE,
    User_Id INT,
    FOREIGN KEY(User_Id) REFERENCES User(Id)
    );
    