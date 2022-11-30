CREATE OR REPLACE FUNCTION space_travel(origin INT, destination INT, quantity BIGINT)
RETURNS boolean AS
$$
BEGIN
    IF quantity < 0 THEN RETURN FALSE;
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

