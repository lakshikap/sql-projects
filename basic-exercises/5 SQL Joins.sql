SELECT * FROM movies;
SELECT m.movie_id, title, budget, revenue, currency, unit
FROM movies m
INNER JOIN financials f
ON m.movie_id=f.movie_id
UNION
SELECT f.movie_id, title, budget, revenue, currency, unit
FROM movies m
RIGHT JOIN financials f
ON m.movie_id=f.movie_id;
SELECT movie_id, title, budget, revenue, currency, unit
FROM movies m
RIGHT JOIN financials f
USING (movie_id);

SELECT m.movie_id, title, name
FROM movies m
CROSS JOIN languages l
ON m.language_id=l.language_id;

SELECT m.title
FROM movies m
CROSS JOIN languages l
ON m.language_id=l.language_id AND l.name='Telugu';

SELECT DISTINCT name, COUNT(movie_id)
FROM languages l
LEFT JOIN movies m USING (language_id)
GROUP BY language_id;
