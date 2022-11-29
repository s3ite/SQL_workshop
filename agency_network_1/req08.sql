SELECT
    customer_surname AS "best customers",
    travelers AS "number of travels"
FROM
    booking

ORDER BY travelers DESC, customer_surname DESC
LIMIT 3
