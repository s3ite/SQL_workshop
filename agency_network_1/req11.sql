SELECT id, 
    CASE
        WHEN NOW() > start_date and NOW() < end_date THEN 'Ongoing'
        WHEN NOW() > end_date THEN 'Done'
        ELSE 'Booked'
    END AS "trip status"
FROM booking

ORDER BY  "trip status", id
