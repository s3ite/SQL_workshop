CREATE or replace FUNCTION duration_to_string(duration INT)
RETURNS TABLE(duration_to_string text) AS
$$
BEGIN
	RETURN QUERY select CASE 
				WHEN duration > 0 then CONCAT(CAST( duration/60 AS text), ':', TO_CHAR(to_timestamp(duration), 'SS')) 
				ELSE CONCAT(CAST( 0 AS text), ':', TO_CHAR(to_timestamp(duration), 'SS')) 
			END;
END
$$ LANGUAGE 'plpgsql';
