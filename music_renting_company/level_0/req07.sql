DELETE FROM album
WHERE name like '%P%P%'
	OR name like '%mm%'
       	OR MOD(Length(name), 7) = 0
	OR name like '%&%'
