INSERT INTO music_album
(id, music_id, alb_id, track)
VALUES
(default, (SELECT music.id from music inner join artist on artist.id = music.id where title ilike 'Le Petit Pain au Chocolat' and artist.name ilike 'Joe DASSIN'), (SELECT id from album where album.name ilike 'Joe Dassin (Les Champs-Élysées)'), 2),


(default, (SELECT music.id from music inner join artist on artist.id = music.id where title ilike 'Comment lui dire' and artist.name ilike 'France GALL'), (SELECT id from album where album.name ilike 'France Gall'), 1),

(default, (SELECT music.id from music inner join artist on artist.id = music.id where title ilike 'C''est ta chance' and artist.name ilike 'Jean-Jacques GOLDMAN'), (SELECT id from album where album.name ilike 'Traces'), 3)

