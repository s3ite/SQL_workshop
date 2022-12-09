INSERT INTO music_album (music_id, alb_id, track)
VALUES
((SELECT id FROM music WHERE music.title = 'Le Petit Pain au Chocolat'),
	(SELECT id FROM album WHERE album.name = 'Joe Dassin (Les Champs-Élysées)'),
	2),
((SELECT id FROM music WHERE music.title = 'Comment lui dire'),
	(SELECT id FROM album WHERE album.name = 'France Gall'),
	1),
((SELECT id FROM music WHERE music.title = 'C''est ta chance'),
	(SELECT id FROM album WHERE album.name = 'Traces'),
	3);
