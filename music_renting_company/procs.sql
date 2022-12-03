CREATE or replace FUNCTION rent_album(email VARCHAR(64), album VARCHAR(64), begin_date DATE)
RETURNS BOOLEAN as
$$
	IF (SELECT stock FROM stock INNER JOIN album ON album.id = stock.alb_id WHERE album.name like album) = NULL then return false;
	end if;
	IF (SELECT stock FROM stock INNER JOIN album ON album.id = stock.alb_id WHERE album.name like album) = NULL then return false;
	end if;
	IF (SELECT stock FROM stock INNER JOIN album ON album.id = stock.alb_id WHERE album.name like album) = NULL then return false;
	end if;


