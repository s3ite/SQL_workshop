CREATE OR REPLACE FUNCTION space_travel(origin INT, destination INT, quantity BIGINT)
RETURNS boolean AS
$$
BEGIN
    IF quantity < 0 THEN RETURN FALSE; END IF; 
    IF (SELECT id_system FROM planet WHERE id = origin) <>  
        (SELECT id_system FROM planet WHERE id = destination) THEN RETURN  FALSE;
    END IF;

UPDATE planet
SET population = population - quantity
WHERE id = origin;

UPDATE planet
SET population = population +  quantity
WHERE id = destination;

RETURN TRUE;
EXCEPTION 
            WHEN others THEN
                RETURN FALSE;
END
$$ LANGUAGE 'plpgsql' ;


CREATE OR REPLACE FUNCTION list_satellite_inf_750(syst INT)
RETURNS TABLE(satellite VARCHAR(32), planet VARCHAR(32), radius INT) AS
$$
BEGIN 
RETURN QUERY SELECT DISTINCT satellite.name, planet.name, satellite.radius
    FROM satellite
    INNER JOIN planet ON planet.id = satellite.id_planet
    WHERE satellite.radius < 750 and planet.id_system = syst
    ORDER BY planet.name, satellite.radius DESC, satellite.name;

EXCEPTION 
     WHEN others THEN
        RETURN;
END;
$$ LANGUAGE 'plpgsql' ;


