CREATE OR REPLACE VIEW view_nearest_planet_to_sun
AS
SELECT planet.name as planet
FROM planet
INNER JOIN planetary_system on planetary_system.id = planet.id_system
WHERE star iLIKE 'Sun'
ORDER BY period
LIMIT 3;


CREATE OR REPLACE VIEW view_nb_satellite_per_planet
AS
SELECT planet.name as planet , CASE
                                    WHEN COUNT(id_planet) < 1 THEN 0
                                    ELSE COUNT(id_planet)
                                END AS "number of satellites"
FROM satellite
RIGHT JOIN planet on planet.id = satellite.id_planet and satellite.radius > 500
GROUP BY planet
ORDER BY "number of satellites", planet;



CREATE OR REPLACE VIEW view_average_period
AS
SELECT planetary_system.name as system , CASE WHEN ROUND(AVG(period),  2) > 0 THEN ROUND(AVG(period),  2) ELSE 0 END   AS "average_period"
FROM planet
RIGHT JOIN planetary_system on planetary_system.id = planet.id_system
GROUP BY system
ORDER BY "average_period";


CREATE OR REPLACE VIEW view_biggest_entities
AS
SELECT 'planet' as type, planetary_system.name as system, planet.name, radius
FROM planet
INNER JOIN planetary_system ON planetary_system.id = planet.id_system
UNION
SELECT 'satellite' as type, planetary_system.name as system, satellite.name, satellite.radius
FROM satellite
INNER JOIN planet ON planet.id = satellite.id_planet
INNER JOIN planetary_system ON planetary_system.id = planet.id_system
ORDER BY radius DESC, name
LIMIT 10

