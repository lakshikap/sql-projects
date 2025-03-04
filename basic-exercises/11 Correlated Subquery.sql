SELECT a.actor_id, a.name, count(*) as movies_count
FROM movie_actor ma
JOIN actors a
ON a.actor_id=ma.actor_id
GROUP BY actor_id
ORDER BY movies_count DESC;

Explain analyze
SELECT actor_id, name,
(SELECT COUNT(*) FROM movie_actor WHERE actor_id=actors.actor_id) as movies_count
FROM actors
ORDER BY movies_count DESC;

SELECT * FROM movies WHERE release_year IN ((SELECT MAX(release_year) FROM movies), (SELECT MIN(release_year) FROM movies)); 
SELECT * FROM movies WHERE imdb_rating > (SELECT AVG(imdb_rating) FROM movies);


