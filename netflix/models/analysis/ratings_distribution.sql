SELECT
  rating,
  COUNT(*) AS num_votes
FROM {{ ref('fct_ratings') }}
GROUP BY rating
ORDER BY rating ASC
