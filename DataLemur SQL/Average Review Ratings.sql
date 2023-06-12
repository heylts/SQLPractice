SELECT 
  EXTRACT(MONTH FROM submit_date) mth,
  product_id product,
  ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id;