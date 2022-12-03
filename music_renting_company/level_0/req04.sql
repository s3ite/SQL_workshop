INSERT INTO music
(id, title, art_id, duration)
VALUES
(default, 'Le Petit Pain au Chocolat',(SELECT id FROM artist WHERE name ilike'Joe DASSIN'), 3*60+30),
(default, 'Comment lui dire', (SELECT id FROM artist WHERE name ilike 'France GALL'), 3*60+30),
(default, 'C''est ta chance', (SELECT id FROM artist WHERE name ilike 'Jean-Jacques GOLDMAN'), 6*60+31),
(default, 'Siffler sur la colline', (SELECT id FROM artist WHERE name ilike 'Joe DASSIN'), 2*60+32)
