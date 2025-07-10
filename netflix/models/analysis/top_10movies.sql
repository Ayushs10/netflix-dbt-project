SELECT
  m.movie_title,
  COUNT(*) AS total_ratings
FROM {{ ref('fct_ratings') }} r
JOIN {{ ref('dim_movies') }} m ON r.movie_id = m.movie_id
GROUP BY m.movie_title
ORDER BY total_ratings DESC
LIMIT 10
