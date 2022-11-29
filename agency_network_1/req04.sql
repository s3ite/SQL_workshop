SELECT COUNT(city), country FROM destination
GROUP BY country
ORDER BY COUNT(country) DESC
