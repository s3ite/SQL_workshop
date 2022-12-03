CREATE or replace FUNCTION duration_to_string(duration INT)
RETURNS TABLE(duration_to_string text) AS
$$
BEGIN
	RETURN QUERY select CASE 
				WHEN duration > 0 then TO_CHAR(to_timestamp(duration), 'MI:SS') 
				ELSE TO_CHAR(to_timestamp(0), 'MI:SS')
			END;
END
$$ LANGUAGE 'plpgsql';
