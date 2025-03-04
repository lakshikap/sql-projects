SELECT * FROM food_db.items;
SELECT * FROM items
CROSS JOIN variants;
SELECT *, CONCAT(name, " - ", variant_name) as fullname
FROM items
CROSS JOIN variants;
SELECT * FROM moviesdb.movies
CROSS JOIN moviesdb.financials;
SELECT * FROM items;
SELECT * FROM variants;
SELECT m.movie_id, title, budget, revenue, currency, unit, (revenue-budget) as profit
FROM movies m
JOIN financials f
ON m.movie_id=f.movie_id; 