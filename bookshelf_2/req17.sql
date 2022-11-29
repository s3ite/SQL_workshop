
SELECT title, author, extract(year from release) as release_year
FROM books
ORDER BY release DESC, title, author
