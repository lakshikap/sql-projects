SELECT * FROM movies
ORDER BY imdb_rating DESC
LIMIT 1;
SELECT * FROM movies
WHERE imdb_rating=(SELECT MAX(imdb_rating) FROM movies);
SELECT * FROM movies
WHERE imdb_rating=(SELECT MIN(imdb_rating) FROM movies);
# returns a list of values
SELECT * FROM movies WHERE imdb_rating IN ((SELECT MIN(imdb_rating) FROM movies),
 (SELECT MAX(imdb_rating) FROM movies));
SELECT *
FROM (SELECT name, year(CURDATE())-birth_year as age 
 FROM actors) as actors_age 
 WHERE age>70 AND age<85;
  
# returns a table 
