-- Parte 1

INSERT INTO `movies_db`.`genres` (`name`, `ranking`, `active`) 
VALUES ('Investigacion', '13', '1');

UPDATE `movies_db`.`genres` 
SET `name` = 'Investigacion Cientifica' 
WHERE (`id` = '16');

DELETE FROM `movies_db`.`genres` 
WHERE (`id` = '16');

SELECT * 
FROM movies_db.movies;

SELECT first_name,last_name,rating 
FROM movies_db.actors;

SELECT title AS titulo 
FROM movies_db.series;


-- Parte 2

SELECT first_name,last_name 
FROM movies_db.actors 
WHERE rating > 7.5;

SELECT title, rating, awards 
FROM movies_db.movies 
WHERE rating > 7.5 
AND awards > 2;

SELECT title, rating 
FROM movies_db.movies 
ORDER BY rating ASC;


-- Parte 3

SELECT title 
FROM movies_db.movies 
WHERE id < 4 LIMIT 3;

SELECT title 
FROM movies_db.movies 
WHERE rating <= 10.0 
ORDER BY rating DESC LIMIT 5;

SELECT title 
FROM movies_db.movies 
WHERE rating <= 10.0 
ORDER BY rating DESC 
LIMIT 5 OFFSET 5;

SELECT first_name, last_name 
FROM movies_db.actors 
WHERE id <= 10;

SELECT first_name, last_name 
FROM movies_db.actors 
WHERE id <= 50 
LIMIT 10 OFFSET 20;


-- Parte 4

SELECT title, rating 
FROM movies_db.movies 
WHERE title LIKE "%Harry Potter%";

SELECT first_name, last_name 
FROM movies_db.actors 
WHERE first_name 
LIKE "%Sam%";

SELECT title 
FROM movies_db.movies 
WHERE release_date 
BETWEEN 20040101 AND 20081231;