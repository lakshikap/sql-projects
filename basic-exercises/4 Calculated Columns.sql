SELECT *, YEAR(CURDATE())-birth_year as age FROM actors;
SELECT *, (revenue-budget) as profit FROM moviesdb.financials;
SELECT *, IF(currency='USD', revenue*77, revenue) as revenue_inr FROM moviesdb.financials;
SELECT DISTINCT unit FROM financials;
SELECT *, CASE
	WHEN unit='Thousands' THEN revenue/1000
    WHEN unit='Billions' THEN revenue*1000
    ELSE revenue
END as rev_mln FROM financials;
SELECT *, ROUND((revenue-budget)/budget*100, 1) as profit_percen FROM financials;
SELECT * FROM financials WHERE MOD(movie_id, 2) = 0;
SELECT * FROM financials WHERE MOD(movie_id, 2) = 1; 
SELECT COUNT(DISTINCT imdb_rating) as cnt_rating FROM movies;
SELECT ROUND(STDDEV(imdb_rating),2) as std FROM movies;
