-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/BBXFik
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- drop table position;
-- drop table player_game_stats;
-- drop table players_FIFA_info;

CREATE TABLE "position" (
    "position_id" SERIAL   NOT NULL,
    "players_FIFA_info_id" SERIAL   NOT NULL,
    "position" VARCHAR(5)   NOT NULL,
    "team" VARCHAR(25)   NOT NULL,
    "touches" INT   NOT NULL,
    CONSTRAINT "pk_position" PRIMARY KEY (
        "position_id"
     )
);

CREATE TABLE "player_game_stats" (
    "player_game_stats_id" SERIAL   NOT NULL,
    "dribbles_completed" INT   NOT NULL,
    "goals" INT   NOT NULL,
    "shots" INT   NOT NULL,
    "shots_on_target" INT   NOT NULL,
    "passes_completed" INT   NOT NULL,
    "passes" INT   NOT NULL,
    "assists" INT   NOT NULL,
    "tackles_won" INT   NOT NULL,
    "minutes_played" INT   NOT NULL,
    CONSTRAINT "pk_player_game_stats" PRIMARY KEY (
        "player_game_stats_id"
     )
);

CREATE TABLE "players_FIFA_info" (
    "players_FIFA_info_id" SERIAL   NOT NULL,
    "player_game_stats_id" SERIAL   NOT NULL,
    "player" VARCHAR(25)   NOT NULL,
    "team" VARCHAR(25)   NOT NULL,
    "age" INT   NOT NULL,
    "overall_0-100" INT   NOT NULL,
    "value_in_Euros" INT   NOT NULL,
    CONSTRAINT "pk_players_FIFA_info" PRIMARY KEY (
        "players_FIFA_info_id"
     )
);

ALTER TABLE "players_FIFA_info" ADD CONSTRAINT "fk_players_FIFA_info_players_FIFA_info_id" FOREIGN KEY("players_FIFA_info_id")
REFERENCES "position" ("players_FIFA_info_id");

ALTER TABLE "players_FIFA_info" ADD CONSTRAINT "fk_players_FIFA_info_player_game_stats_id" FOREIGN KEY("player_game_stats_id")
REFERENCES "player_game_stats" ("player_game_stats_id");

