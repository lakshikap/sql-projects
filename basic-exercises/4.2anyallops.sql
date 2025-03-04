# select actors who acted in any of these movies 101, 110, 121
SELECT actor_id FROM movie_actor WHERE movie_id IN (101, 110, 121);
SELECT * FROM actors WHERE actor_id IN (SELECT actor_id FROM movie_actor WHERE movie_id IN (101, 110, 121));
SELECT * FROM actors WHERE actor_id = ANY(SELECT actor_id FROM movie_actor WHERE movie_id IN (101, 110, 121));

# Select all movies whose rating is greater than any of the marvel movies rating 
SELECT * FROM movies WHERE imdb_rating > ANY(SELECT imdb_rating FROM movies WHERE studio="Marvel Studios");
SELECT * FROM movies WHERE imdb_rating > SOME(SELECT imdb_rating FROM movies WHERE studio="Marvel Studios");
# Gets the max
SELECT * FROM movies WHERE imdb_rating > ALL(SELECT imdb_rating FROM movies WHERE studio="Marvel Studios");
SELECT * FROM movies WHERE MAX(imdb_rating) > SOME(SELECT imdb_rating FROM movies WHERE studio="Marvel Studios");
