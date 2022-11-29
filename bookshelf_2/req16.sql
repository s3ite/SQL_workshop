
SELECT title, author, release
FROM books
WHERE release < date '1900-01-01' OR release >= date '2000-01-01'
ORDER BY release DESC, title, author
