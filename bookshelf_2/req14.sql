SELECT name, 
        CASE 
            WHEN death_date IS NULL THEN date '2000-01-01' - birth_date
            WHEN birth_date < '2000-01-01' THEN death_date - birth_date
        END AS days
FROM authors
ORDER BY name
