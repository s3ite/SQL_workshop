SELECT title, author AS name
FROM books
INNER JOIN authors ON authors.name = books.author
WHERE release >  death_date
ORDER BY title, name
