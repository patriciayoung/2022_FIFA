drop table PLAYER_INFO;
drop table POSITION;
drop table PLAYER_STATS;

CREATE TABLE Player_Info (
    Player_id INT PRIMARY KEY,
    Position_id INT,
    Player VARCHAR(50),  -- Changed the column name to PlayerName
    TEAM VARCHAR(25),
    AGE INT,
    FOREIGN KEY (Position_id) REFERENCES POSITION(Position_id)
);


CREATE TABLE POSITION (
	Position_id INT PRIMARY KEY,
	POSITION VARCHAR(5),
	TEAM VARCHAR(25)
);


CREATE TABLE Player_Stats (
	Player_id INT PRIMARY KEY,
	TOUCHES INT, 
	DRIBBLES_COMPLETED INT, 
	GOALS INT, 
	SHOTS INT, 
	SHOTS_ON_TARGET INT, 
	PASSES_COMPLETED INT, 
	PASSES INT, 
	ASSISTS INT, 
	TACKLES_WON INT
);

Select * from player_info;
select * from position;
select * from player_stats;




