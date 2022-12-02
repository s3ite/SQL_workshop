DELETE FROM album
WHERE regexp_count(name, 'P.') = 2
	OR regexp_match(name, 'mm') = True
       	OR MOD(Length(name), 7) = 0
	OR regexp_match(name, '&') = True
