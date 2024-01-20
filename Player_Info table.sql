--drop table Player_Info;


CREATE TABLE Player_Info (
    id SERIAL PRIMARY KEY,
    player VARCHAR(50),
    position_ VARCHAR(5),
    team VARCHAR(25),
    age INT,
    minutes_played INT,
	touches INT,
    dribbles_completed INT,
    goals INT,
    shots INT,
    shots_on_target INT,
    passes INT,
    passes_completed INT,
    assists INT,
    tackles_won INT,
    "overall_0-100" INT,
	value_in_Euros INT
);

SELECT * FROM Player_Info;


