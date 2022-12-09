CREATE OR REPLACE VIEW view_artists
AS
Select name as artist, birth_date as birthdate, (Select count(art_id) FROM music where art_id = artist.id) as songs
FROM artist
ORDER BY artist;


CREATE OR REPLACE VIEW view_albums
AS
Select  album.name as album, count(art_id) as songs, (select duration_to_string(duration)) as duration 
FROM album
JOIN music_album ON music_album.alb_id = album.id
JOIN music ON music.id = music_album.music_id
GROUP BY album, duration
ORDER BY album;


CREATE OR REPLACE VIEW view_songs
AS
SELECT title as music , name as artist, (SELECT duration_to_string(duration)) as duration
FROM music
LEFT JOIN artist ON artist.id = music.art_id
GROUP BY title, name, duration
ORDER BY music, artist

