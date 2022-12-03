CREATE OR REPLACE VIEW view_artists
AS
Select name as artist, birth_date as birthdate, (Select count(art_id) FROM music where art_id = artist.id) as songs
FROM
artist
ORDER BY artist;


CREATE OR REPLACE VIEW view_artists
AS
Select  album.name as album, 
			(Select count(art_id) FROM music where music.id = music_album.music_id) as songs, (select * from
			duration_to_string(select SUM(duration) from music where music.id = music_album.music_id) as duration)
FROM
album
ORDER BY album;


CREATE OR REPLACE VIEW view_songs
AS
SELECT title as music , 
			 (SELECT artist.name from artist where music.art_id = artist.id) as artist, (select * from
			duration_to_string(select SUM(duration) from music where music.id = music_album.music_id) as duration)
FROM
music
ORDER BY music, artist

