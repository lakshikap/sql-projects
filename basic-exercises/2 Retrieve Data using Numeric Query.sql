SELECT * FROM movies ORDER BY release_year DESC;
SELECT * FROM movies WHERE release_year=2022;
SELECT * FROM movies WHERE release_year>=2020;
SELECT * FROM movies WHERE release_year>=2020 AND imdb_rating>8;
SELECT * FROM movies WHERE studio IN ("Marvel Studios", "Hombale Films");
SELECT release_year FROM movies WHERE title LIKE "%THOR%";
SELECT * FROM movies WHERE studio <> "Marvel Studios";
SELECT title FROM movies WHERE studio NOT IN ("Marvel Studios");