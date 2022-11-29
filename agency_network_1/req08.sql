SELECT
    customer_surname AS "best customers",
    COUNT(customer_surname) AS "number of travels"
FROM
    booking
GROUP BY customer_surname

ORDER BY  COUNT(customer_surname) DESC, customer_surname DESC
LIMIT 3
