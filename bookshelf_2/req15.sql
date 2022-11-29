SELECT author AS name, COUNT(author) AS stocks
FROM books
GROUP BY author
ORDER BY name
