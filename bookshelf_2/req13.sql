SELECT title, books.author
FROM (
    SELECT author,
    MIN(release) as mindate FROM books 
    GROUP BY author) as newtable, books
WHERE books.author = newtable.author AND mindate = release
ORDER BY title, books.author
