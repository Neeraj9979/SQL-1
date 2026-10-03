CREATE DATABASE Instagram;
USE Instagram;
CREATE TABLE IF NOT EXISTS User(
	Id INT NOT NULL,
    Age INT,
    Name VARCHAR(30) UNIQUE,
    Email VARCHAR(50) ,
    Followers INT DEFAULT 0,
    Following INT,
    CONSTRAINT age_Check CHECK(Age>=18)
    );

