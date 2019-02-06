/*
 Assignment 2 - SQL and R.sql
 */
#ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY ''; -- My.ini

USE MovieDB;

DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Rating;

CREATE TABLE Movies (
    Id INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL
);

INSERT INTO Movies (Id, Title) VALUES (1, 'Polar');
INSERT INTO Movies (Id, Title) VALUES (2, 'Glass');
INSERT INTO Movies (Id, Title) VALUES (3, 'Bohemian Rhapsody');
INSERT INTO Movies (Id, Title) VALUES (4, 'Aquaman');
INSERT INTO Movies (Id, Title) VALUES (5, 'Green Book');
INSERT INTO Movies (Id, Title) VALUES (6, 'The Favourite');

SELECT *
  FROM Movies;

CREATE TABLE Rating (
    User VARCHAR(50) NOT NULL,
    Rating INT NULL,
    MovieId INT REFERENCES Reviewers
);

INSERT INTO Rating (User, Rating, MovieId) VALUES ('Asher', 4, 1);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Cyd', 2, 3);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Mary', 3, 2);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Joe', 4, 4);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Charles', 2, 6);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Ana', 3, 5);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Larry', 3, 4);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Martin',1, 3);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Mary',4, 2);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Ana',5, 1);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Joe',2, 3);
INSERT INTO Rating (User, Rating, MovieId) VALUES ('Martin',4, 6);

SELECT * FROM Rating;

SELECT v.*, r.User, r.Rating FROM Movies v INNER JOIN Rating r ON v.Id = r.MovieId;

