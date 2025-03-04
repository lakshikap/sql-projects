# Get all actors whose age is between 70 and 85 
SELECT actor_name, age FROM (SELECT name as actor_name, year(CURDATE())-birth_year as age
FROM actors) 
as actors_Age
WHERE age>70 AND age<85; 
# CTE
WITH actors_age as (
					SELECT name as actor_name, 
					year(CURDATE())-birth_year as age
					FROM actors
)
SELECT actor_name, age
FROM actors_age
WHERE age > 70 AND age < 85;

# movies that produced 500% or mroe profit and their rating was less than average rating for all movies.
# movies that produced 500% profit
SELECT x.movie_id, x.pct_profit, y.title, y.imdb_rating
FROM (SELECT *, (revenue-budget)/budget*100 as pct_profit
FROM financials) x
JOIN (SELECT * FROM movies 
WHERE imdb_rating < (SELECT AVG(imdb_rating) FROM movies) y 
ON x.movie_id=y.movie_id
WHERE pct_profit>=500;

# their rating was less than the avaerage rating for all movies
