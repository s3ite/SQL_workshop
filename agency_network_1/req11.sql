SELECT id, 
    CASE
        WHEN NOW() > start_date and NOW() < end_date THEN 'ONGOING'
        WHEN NOW() > end_date THEN 'DONE'
        ELSE 'BOOKED'
    END AS "trip status"
FROM booking

ORDER BY  "trip status", id
