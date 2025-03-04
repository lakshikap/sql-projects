SELECT COUNT(imdb_rating) FROM movies WHERE studio="Marvel Studios";
SELECT MAX(imdb_rating) FROM movies WHERE studio="Marvel Studios";
SELECT MIN(imdb_rating) FROM movies WHERE studio="Marvel Studios";
SELECT AVG(imdb_rating) FROM movies WHERE studio="Marvel Studios";
SELECT ROUND(AVG(imdb_rating),2) as avg_rating FROM movies WHERE studio="Marvel Studios";
SELECT MIN(imdb_rating) as min_rating, MAX(imdb_rating) as min_rating, ROUND(AVG(imdb_rating),2) as avg_rating FROM movies WHERE studio="Marvel Studios";
SELECT industry, COUNT(*) FROM movies GROUP BY industry;
SELECT studio, COUNT(*) as cnt FROM movies GROUP BY studio ORDER BY cnt DESC;
SELECT industry, COUNT(industry) as cnt, AVG(imdb_rating)as avg_rating FROM movies GROUP BY industry;
SELECT studio, COUNT(studio) as cnt, ROUND(AVG(imdb_rating),1) as avg_rating FROM movies WHERE studio<>"" GROUP BY studio ORDER BY avg_rating DESC;
SELECT COUNT(*) FROM movies WHERE release_year BETWEEN 2015 AND 2022;
SELECT MAX(release_year), MIN(release_year) FROM movies;
SELECT release_year, COUNT(release_year) FROM movies GROUP BY release_year ORDER BY release_year DESC;
SELECT release_year, COUNT(*) as cnt FROM movies GRoUP BY release_year HAVING cnt>2 ORDER BY cnt DESC;
