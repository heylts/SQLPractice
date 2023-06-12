SELECT pages.page_id
FROM pages
LEFT JOIN page_likes
  ON pages.page_id = page_likes.page_id
WHERE page_likes.liked_date is NULL
ORDER BY page_id ASC;