SELECT
  m.movie_title,
  ROUND(AVG(r.rating), 2) AS avg_rating,
  COUNT(*) AS total_ratings
FROM {{ ref('fct_ratings') }} r
JOIN {{ ref('dim_movies') }} m ON r.movie_id = m.movie_id
GROUP BY m.movie_title
HAVING COUNT(*) > 100  -- filter for meaningful average
ORDER BY avg_rating DESC
LIMIT 10
