
--Variables for point biserial correlation Master blue team

SELECT SUM(bluekills)/COUNT(bluewins) FROM Master_games WHERE bluewins = 1;--X1
SELECT SUM(bluekills)/COUNT(bluekills) FROM Master_games;--X
SELECT POWER(SUM(bluekills)/COUNT(bluekills),2) FROM Master_games--Xi
SELECT SQRT((POWER(SUM(bluekills),2)/COUNT(bluekills) - POWER(SUM(bluekills)/COUNT(bluekills),2))) FROM Master_games;--Sx
SELECT SUM(bluewins)/COUNT(bluewins) FROM Master_games;--p
SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) FROM Master_games;--q




-- Correlación biserial puntual entre bluewins y bluekills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(bluekills)/COUNT(bluewins) FROM Master_games WHERE bluewins = 1);
SET @x = (SELECT SUM(bluekills)/COUNT(bluekills) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(bluekills),2)/COUNT(bluekills) - POWER(SUM(bluekills)/COUNT(bluekills),2))) FROM Master_games)
SET @p = (SELECT SUM(bluewins)/COUNT(bluewins) FROM Master_games)
SET @q = (SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb


--Correlación biserial puntual entre bluewins y bluedeath
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluedeath)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluedeath)/COUNT(bluedeath) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluedeath),2)/COUNT(bluedeath) 
        - POWER(SUM(bluedeath)/COUNT(bluedeath),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


--Correlación biserial puntual entre bluewins y blueassist
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(blueassist)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(blueassist)/COUNT(blueassist) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(blueassist),2)/COUNT(blueassist) 
        - POWER(SUM(blueassist)/COUNT(blueassist),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;



-- Correlación biserial puntual entre bluewins y bluedragonkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(bluedragonkills)/COUNT(bluewins) FROM Master_games WHERE bluewins = 1);
SET @x = (SELECT SUM(bluedragonkills)/COUNT(bluedragonkills) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(bluedragonkills),2)/COUNT(bluedragonkills) - POWER(SUM(bluedragonkills)/COUNT(bluedragonkills),2))) FROM Master_games)
SET @p = (SELECT SUM(bluewins)/COUNT(bluewins) FROM Master_games)
SET @q = (SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb


--Correlación biserial puntual entre bluewins y bluebaronkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(bluebaronkills)/COUNT(bluewins) FROM Master_games WHERE bluewins = 1);
SET @x = (SELECT SUM(bluebaronkills)/COUNT(bluebaronkills) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(bluebaronkills),2)/COUNT(bluebaronkills) - POWER(SUM(bluebaronkills)/COUNT(bluebaronkills),2))) FROM Master_games)
SET @p = (SELECT SUM(bluewins)/COUNT(bluewins) FROM Master_games)
SET @q = (SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb


--Correlación biserial puntual entre bluewins y bluetowerkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(bluetowerkills)/COUNT(bluewins) FROM Master_games WHERE bluewins = 1);
SET @x = (SELECT SUM(bluetowerkills)/COUNT(bluetowerkills) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(bluetowerkills),2)/COUNT(bluetowerkills) - POWER(SUM(bluetowerkills)/COUNT(bluetowerkills),2))) FROM Master_games)
SET @p = (SELECT SUM(bluewins)/COUNT(bluewins) FROM Master_games)
SET @q = (SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb





--Correlación biserial puntual entre bluewins y bluetotalgold
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(bluetotalgold)/COUNT(bluewins) FROM Master_games WHERE bluewins = 1);
SET @x = (SELECT SUM(bluetotalgold)/COUNT(bluetotalgold) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(bluetotalgold),2)/COUNT(bluetotalgold) - POWER(SUM(bluetotalgold)/COUNT(bluetotalgold),2))) FROM Master_games)
SET @p = (SELECT SUM(bluewins)/COUNT(bluewins) FROM Master_games)
SET @q = (SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb


--Correlación biserial puntual entre bluewins y bluefirstblood
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluefirstblood)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluefirstblood)/COUNT(bluefirstblood) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluefirstblood),2)/COUNT(bluefirstblood) 
        - POWER(SUM(bluefirstblood)/COUNT(bluefirstblood),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


-- --Correlación biserial puntual entre bluewins y bluefirstdragon

DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluefirstdragon)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluefirstdragon)/COUNT(bluefirstdragon) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluefirstdragon),2)/COUNT(bluefirstdragon) 
        - POWER(SUM(bluefirstdragon)/COUNT(bluefirstdragon),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;



--Correlación biserial puntual entre bluewins y bluefirsttower
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluefirsttower)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluefirsttower)/COUNT(bluefirsttower) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluefirsttower),2)/COUNT(bluefirsttower) 
        - POWER(SUM(bluefirsttower)/COUNT(bluefirsttower),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;



--Correlación biserial puntual entre bluewins y bluefirstinhibitor
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluefirstinhibitor)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluefirstinhibitor)/COUNT(bluefirstinhibitor) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluefirstinhibitor),2)/COUNT(bluefirstinhibitor) 
        - POWER(SUM(bluefirstinhibitor)/COUNT(bluefirstinhibitor),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;



--Correlación biserial puntual entre bluewins y bluewardplaced
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluewardplaced)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluewardplaced)/COUNT(bluewardplaced) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluewardplaced),2)/COUNT(bluewardplaced) 
        - POWER(SUM(bluewardplaced)/COUNT(bluewardplaced),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


--Correlación biserial puntual entre bluewins y bluewardkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluewardkills)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluewardkills)/COUNT(bluewardkills) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluewardkills),2)/COUNT(bluewardkills) 
        - POWER(SUM(bluewardkills)/COUNT(bluewardkills),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;




--Correlación biserial puntual entre bluewins y bluetotalminionkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluetotalminionkills)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluetotalminionkills)/COUNT(bluetotalminionkills) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluetotalminionkills),2)/COUNT(bluetotalminionkills) 
        - POWER(SUM(bluetotalminionkills)/COUNT(bluetotalminionkills),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


--Correlación biserial puntual entre bluewin y bluetotallevel

DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluetotallevel)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluetotallevel)/COUNT(bluetotallevel) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluetotallevel),2)/COUNT(bluetotallevel) 
        - POWER(SUM(bluetotallevel)/COUNT(bluetotallevel),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


--Correlación biserial puntual entre bluewins y bluejungleminionkills

DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(bluejungleminionkills)/COUNT(bluewins) 
    FROM Master_games 
    WHERE bluewins = 1
);
SET @x = (
    SELECT SUM(bluejungleminionkills)/COUNT(bluejungleminionkills) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(bluejungleminionkills),2)/COUNT(bluejungleminionkills) 
        - POWER(SUM(bluejungleminionkills)/COUNT(bluejungleminionkills),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(bluewins)/COUNT(bluewins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(bluewins)-SUM(bluewins))/COUNT(bluewins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;
