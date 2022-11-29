SELECT title, author
FROM books
INNER JOIN authors ON authors.name = books.author
WHERE country = 'France' and genre = 'Poem'
ORDER BY title, author
