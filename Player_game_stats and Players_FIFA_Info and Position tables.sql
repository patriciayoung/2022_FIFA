--drop table position;
--drop table player_game_stats;
--drop table players_FIFA_info;


create table position (
	position_id SERIAL PRIMARY KEY,
	players_FIFA_info_id SERIAL
	position VARCHAR (5),
	team VARCHAR (25),
	touches INT
);


create table player_game_stats (
	player_game_stats_id SERIAL PRIMARY KEY,
	dribbles_completed INT,
	goals INT,
	shots INT,
	shots_on_target INT,
	passes_completed INT,
	passes INT,
	assists INT,
	tackles_won INT,
	minutes_played INT
);


create table players_FIFA_info (
	players_FIFA_info_id SERIAL PRIMARY KEY,
	player_game_stats_id SERIAL
	player VARCHAR (25),
	team VARCHAR (25),
	age INT,
	"overall_0-100" INT,
	value_in_Euros INT
);


select * from position;
select * from player_game_stats;
select * from players_FIFA_info;




CREATE TABLE position AS
SELECT *
FROM Player_Info;


CREATE TABLE player_game_stats AS
SELECT *
FROM Player_Info;


CREATE TABLE players_FIFA_info AS
SELECT *
FROM Player_Info;


----------------------

select * from position;
ALTER TABLE position
DROP COLUMN player, 
DROP COLUMN age, 
DROP COLUMN "minutes_played", 
DROP COLUMN dribbles_completed, 
DROP COLUMN goals, 
DROP COLUMN shots, 
DROP COLUMN shots_on_target, 
DROP COLUMN passes, 
DROP COLUMN passes_completed, 
DROP COLUMN assists, 
DROP COLUMN tackles_won, 
DROP COLUMN "overall_0-100", 
DROP COLUMN value_in_euros;


select * from player_game_stats;
ALTER TABLE player_game_stats
DROP COLUMN player, 
DROP COLUMN position_, 
DROP COLUMN team, 
DROP COLUMN age, 
DROP COLUMN touches, 
DROP COLUMN "overall_0-100", 
DROP COLUMN value_in_euros;


select * from players_FIFA_info;
ALTER TABLE players_FIFA_info
DROP COLUMN position_, 
DROP COLUMN "minutes_played", 
DROP COLUMN touches, 
DROP COLUMN goals, 
DROP COLUMN shots, 
DROP COLUMN shots_on_target, 
DROP COLUMN passes, 
DROP COLUMN passes_completed, 
DROP COLUMN assists, 
DROP COLUMN tackles_won;


