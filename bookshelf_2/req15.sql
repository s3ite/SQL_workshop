SELECT author AS name, 
CASE 
    WHEN COUNT(author) > 1 THEN CONCAT(COUNT(author), ' ', 'books')  
    ELSE CONCAT(COUNT(author), ' ', 'book') 
END AS stocks

FROM books
GROUP BY author
ORDER BY name
