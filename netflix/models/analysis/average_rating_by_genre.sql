SELECT
  t.tag AS genre,
  ROUND(AVG(r.rating), 2) AS avg_rating,
  COUNT(*) AS num_ratings
FROM {{ ref('fct_ratings') }} r
JOIN {{ ref('dim_movies') }} m ON r.movie_id = m.movie_id
JOIN {{ ref('fct_genome_scores') }} s ON m.movie_id = s.movie_id
JOIN {{ ref('src_genome_tags') }} t ON s.tag_id = t.tag_id
GROUP BY genre
ORDER BY avg_rating DESC
