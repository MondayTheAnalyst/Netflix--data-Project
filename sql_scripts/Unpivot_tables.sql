-------Creating unpivot table for netflix Cast
CREATE TABLE Netflix_cast(
    show_id NVARCHAR(10),
    cast_name NVARCHAR(500)
);

INSERT INTO Netflix_cast(show_id, cast_name)
SELECT show_id, cast_name
FROM [dbo].[Cast]
UNPIVOT
(
    cast_name FOR cast_column IN (
        cast_1, cast_2, cast_3, cast_4, cast_5, cast_6, cast_7, cast_8, cast_9, cast_10,
        cast_11, cast_12, cast_13, cast_14, cast_15, cast_16, cast_17, cast_18, cast_19, cast_20,
        cast_21, cast_22, cast_23, cast_24, cast_25, cast_26, cast_27, cast_28, cast_29, cast_30,
        cast_31, cast_32, cast_33, cast_34, cast_35, cast_36, cast_37, cast_38, cast_39, cast_40,
        cast_41, cast_42, cast_43, cast_44, cast_45, cast_46, cast_47, cast_48, cast_49, cast_50
    )
) AS Netflix_cast;

DELETE FROM  Netflix_cast WHERE cast_name = 'null';

select *
from
[dbo].[Netflix_cast]


---------Creating unpivot table for countries released

CREATE TABLE Countries_released(
    show_id NVARCHAR(10),
    country NVARCHAR(500)
);

INSERT INTO Countries_released(show_id, country)
SELECT show_id, country
FROM [dbo].[Country]
UNPIVOT
(
    country FOR country_column IN (country_1, country_2, country_3, country_4, country_5, country_6, country_7, country_8,
	country_9, country_10, country_11, country_12)
) AS Countries_released;

DELETE FROM  Countries_released WHERE country = 'null';

select *
from 
[dbo].[Countries_released]


--------Creating unpivot table for Netflix directors
CREATE TABLE Netflix_directors(
    show_id NVARCHAR(10),
    director NVARCHAR(500)
);

INSERT INTO Netflix_directors (show_id, director)
SELECT show_id, director
FROM [dbo].[Directors]
UNPIVOT
(
    director FOR director_column IN (director_1, director_2, director_3, director_4, director_5, director_6, director_7, director_8,
	director_9, director_10, director_11, director_12, director_13)
) AS Netflix_directors;

DELETE FROM  Netflix_directors WHERE director = 'null';


select *
from [dbo].[Netflix_directors]

--------Creating unpivot table for Netflix listedin
CREATE TABLE Netflix_listedin (
    show_id NVARCHAR(10),
    listed_in NVARCHAR(500)
);

INSERT INTO Netflix_listedin (show_id, listed_in)
SELECT show_id, listed_in
FROM [dbo].[Listed in]
UNPIVOT
(
    listed_in FOR listed_in_column IN (listed_in_1, listed_in_2, listed_in_3)
) AS Netflix_listed_in;

DELETE FROM Netflix_listedin WHERE listed_in = 'null';

select *
from [dbo].[Netflix_listedin]




