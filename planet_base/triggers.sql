DROP TABLE IF EXISTS result CASCADE;
CREATE TABLE result
(
    modification_date TIMESTAMP,
    old_population BIGINT,
    new_population BIGINT,
    id SERIAL PRIMARY KEY
);

CREATE OR REPLACE FUNCTION update_table()
RETURNS TRIGGER AS
$$
BEGIN
    IF(OLD.name = 'Earth') THEN

INSERT INTO result
(modification_date, old_population, new_population, id)
VALUES
(NOW(), OLD.population, NEW.population, default);
RETURN NEW;

END IF;
RETURN NULL;
END;
$$ LANGUAGE 'plpgsql' ;


CREATE OR REPLACE  TRIGGER store_earth_population_updates
AFTER UPDATE OF population ON planet

FOR EACH ROW EXECUTE FUNCTION update_table();


CREATE OR REPLACE VIEW view_earth_population_evolution 
AS
SELECT id , to_char(modification_date, 'DD/MM/YYYY HH24:MI:SS')  as date, old_population as "old population", new_population as "new population"
FROM result
ORDER BY date;

