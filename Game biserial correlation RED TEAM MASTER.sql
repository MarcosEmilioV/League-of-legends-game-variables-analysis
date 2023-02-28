--Game biserial correlation Master red team 


--Variables for point biserial correlation

SELECT SUM(redkills)/COUNT(redwins) FROM Master_games WHERE redwins = 1;--X1
SELECT SUM(redkills)/COUNT(redkills) FROM Master_games;--X
SELECT POWER(SUM(redkills)/COUNT(redkills),2) FROM Master_games--Xi
SELECT SQRT((POWER(SUM(redkills),2)/COUNT(redkills) - POWER(SUM(redkills)/COUNT(redkills),2))) FROM Master_games;--Sx
SELECT SUM(redwins)/COUNT(redwins) FROM Master_games;--p
SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) FROM Master_games;--q




-- Correlación biserial puntual entre redwins y redkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(redkills)/COUNT(redwins) FROM Master_games WHERE redwins = 1);
SET @x = (SELECT SUM(redkills)/COUNT(redkills) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(redkills),2)/COUNT(redkills) - POWER(SUM(redkills)/COUNT(redkills),2))) FROM Master_games)
SET @p = (SELECT SUM(redwins)/COUNT(redwins) FROM Master_games)
SET @q = (SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb


--Correlación biserial puntual entre redwins y reddeath
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(reddeath)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(reddeath)/COUNT(reddeath) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(reddeath),2)/COUNT(reddeath) 
        - POWER(SUM(reddeath)/COUNT(reddeath),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


--Correlación biserial puntual entre redwins y redassist
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redassist)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redassist)/COUNT(redassist) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redassist),2)/COUNT(redassist) 
        - POWER(SUM(redassist)/COUNT(redassist),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;



-- Correlación biserial puntual entre redwins y reddragonkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(reddragonkills)/COUNT(redwins) FROM Master_games WHERE redwins = 1);
SET @x = (SELECT SUM(reddragonkills)/COUNT(reddragonkills) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(reddragonkills),2)/COUNT(reddragonkills) - POWER(SUM(reddragonkills)/COUNT(reddragonkills),2))) FROM Master_games)
SET @p = (SELECT SUM(redwins)/COUNT(redwins) FROM Master_games)
SET @q = (SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb


--Correlación biserial puntual entre redwins y redbaronkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(redbaronkills)/COUNT(redwins) FROM Master_games WHERE redwins = 1);
SET @x = (SELECT SUM(redbaronkills)/COUNT(redbaronkills) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(redbaronkills),2)/COUNT(redbaronkills) - POWER(SUM(redbaronkills)/COUNT(redbaronkills),2))) FROM Master_games)
SET @p = (SELECT SUM(redwins)/COUNT(redwins) FROM Master_games)
SET @q = (SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb


--Correlación biserial puntual entre redwins y redtowerkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(redtowerkills)/COUNT(redwins) FROM Master_games WHERE redwins = 1);
SET @x = (SELECT SUM(redtowerkills)/COUNT(redtowerkills) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(redtowerkills),2)/COUNT(redtowerkills) - POWER(SUM(redtowerkills)/COUNT(redtowerkills),2))) FROM Master_games)
SET @p = (SELECT SUM(redwins)/COUNT(redwins) FROM Master_games)
SET @q = (SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb





--Correlación biserial puntual entre redwins y redtotalgold
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (SELECT SUM(redtotalgold)/COUNT(redwins) FROM Master_games WHERE redwins = 1);
SET @x = (SELECT SUM(redtotalgold)/COUNT(redtotalgold) FROM Master_games);
SET @sx = (SELECT SQRT((POWER(SUM(redtotalgold),2)/COUNT(redtotalgold) - POWER(SUM(redtotalgold)/COUNT(redtotalgold),2))) FROM Master_games)
SET @p = (SELECT SUM(redwins)/COUNT(redwins) FROM Master_games)
SET @q = (SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) FROM Master_games)
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q)

SELECT @rpb


--Correlación biserial puntual entre redwins y redfirstblood
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redfirstblood)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redfirstblood)/COUNT(redfirstblood) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redfirstblood),2)/COUNT(redfirstblood) 
        - POWER(SUM(redfirstblood)/COUNT(redfirstblood),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


-- --Correlación biserial puntual entre redwins y redfirstdragon

DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redfirstdragon)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redfirstdragon)/COUNT(redfirstdragon) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redfirstdragon),2)/COUNT(redfirstdragon) 
        - POWER(SUM(redfirstdragon)/COUNT(redfirstdragon),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;



--Correlación biserial puntual entre redwins y redfirsttower
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redfirsttower)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redfirsttower)/COUNT(redfirsttower) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redfirsttower),2)/COUNT(redfirsttower) 
        - POWER(SUM(redfirsttower)/COUNT(redfirsttower),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;



--Correlación biserial puntual entre redwins y redfirstinhibitor
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redfirstinhibitor)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redfirstinhibitor)/COUNT(redfirstinhibitor) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redfirstinhibitor),2)/COUNT(redfirstinhibitor) 
        - POWER(SUM(redfirstinhibitor)/COUNT(redfirstinhibitor),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;



--Correlación biserial puntual entre redwins y redwardplaced
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redwardplaced)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redwardplaced)/COUNT(redwardplaced) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redwardplaced),2)/COUNT(redwardplaced) 
        - POWER(SUM(redwardplaced)/COUNT(redwardplaced),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


--Correlación biserial puntual entre redwins y redwardkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redwardkills)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redwardkills)/COUNT(redwardkills) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redwardkills),2)/COUNT(redwardkills) 
        - POWER(SUM(redwardkills)/COUNT(redwardkills),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;




--Correlación biserial puntual entre redwins y redtotalminionkills
DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redtotalminionkills)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redtotalminionkills)/COUNT(redtotalminionkills) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redtotalminionkills),2)/COUNT(redtotalminionkills) 
        - POWER(SUM(redtotalminionkills)/COUNT(redtotalminionkills),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


--Correlación biserial puntual entre redwin y redtotallevel

DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redtotallevel)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redtotallevel)/COUNT(redtotallevel) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redtotallevel),2)/COUNT(redtotallevel) 
        - POWER(SUM(redtotallevel)/COUNT(redtotallevel),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;


--Correlación biserial puntual entre redwins y redjungleminionkills

DECLARE @x1 FLOAT, @x FLOAT, @sx FLOAT, @p DECIMAL(18, 10), @q DECIMAL(18, 10), @rpb FLOAT;

SET @x1 = (
    SELECT SUM(redjungleminionkills)/COUNT(redwins) 
    FROM Master_games 
    WHERE redwins = 1
);
SET @x = (
    SELECT SUM(redjungleminionkills)/COUNT(redjungleminionkills) 
    FROM Master_games
);
SET @sx = (
    SELECT SQRT(
        (POWER(SUM(redjungleminionkills),2)/COUNT(redjungleminionkills) 
        - POWER(SUM(redjungleminionkills)/COUNT(redjungleminionkills),2))
    ) 
    FROM Master_games
);
SET @p = (
    SELECT SUM(redwins)/COUNT(redwins) 
    FROM Master_games
);
SET @q = (
    SELECT (COUNT(redwins)-SUM(redwins))/COUNT(redwins) 
    FROM Master_games
);
SET @rpb = ((@x1 - @x)/ @sx) * SQRT(@p / @q);

SELECT @rpb;
