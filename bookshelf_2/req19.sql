CREATE OR REPLACE FUNCTION add_book(title VARCHAR(64),
    author VARCHAR(64),
    genre VARCHAR(64),
    release_date DATE)
RETURNS BOOLEAN AS
$$
BEGIN
    IF (SELECT birth_date FROM authors WHERE name = author) > release_date 
        THEN RETURN FALSE;
END IF;
INSERT INTO books
(title, author, genre, release)
VALUES
(title, author, genre, release_date);
RETURN TRUE;
EXCEPTION 
            WHEN others THEN
                RETURN FALSE;
END
$$ LANGUAGE 'plpgsql' ;
