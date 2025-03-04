SELECT m.title, group_concat(a.name separator " | ") as actors 
FROM movies m
JOIN movie_actor ma ON ma.movie_id=m.movie_id
JOIN actors a ON a.actor_id=ma.actor_id
GROUP BY m.movie_id;
SELECT a.name, 
group_concat(m.title separator " | ") as movies,
COUNT(m.title) as movie_count
FROM actors a
JOIN movie_actor ma ON ma.actor_id=a.actor_id
JOIN movies m ON m.movie_id=ma.movie_id
GROUP BY a.actor_id
ORDER BY movie_count DESC;
SELECT * FROM movies;
SELECT title, revenue, currency, unit
	CASE	
		WHEN m.unit='Thousands' THEN (revenue/1000)
		WHEN m.unit='Billions' THEN (revenue*1000)
		ELSE revenue
	END as revenue_mln
FROM movies m
JOIN financials f ON m.movie_id=f.movie_id
JOIN languages l ON m.language_id=l.language_id
WHERE l.name="Hindi"
ORDER BY revenue_mln DESC;