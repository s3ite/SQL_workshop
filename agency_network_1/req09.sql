SELECT customer_surname
FROM booking
WHERE
    end_date > date '2019-03-11' and start_date < date '2019-03-11'

ORDER BY customer_surname
