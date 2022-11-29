SELECT name, 
        CASE 
            WHEN death_date IS NULL THEN date '2000-01-01' - birth_date
            WHEN birth_date < date '2000-01-01' THEN death_date - birth_date
        END AS days
FROM authors
WHERE birth_date <  date '2000-01-01'
ORDER BY name
