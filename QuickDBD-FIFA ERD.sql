-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/BBXFik
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Player_Info" (
    "Player_id" INT   NOT NULL,
    "PLAYER" VARCHAR(50)   NOT NULL,
    "TEAM" VARCHAR(25)   NOT NULL,
    "AGE" INT   NOT NULL,
    CONSTRAINT "pk_Player_Info" PRIMARY KEY (
        "Player_id"
     )
);

CREATE TABLE "POSITION" (
    "POSITION" VARCHAR(5)   NOT NULL,
    "TEAM" VARCHAR(25)   NOT NULL
);

CREATE TABLE "Player_Stats" (
    "PLAYER_id" INT   NOT NULL,
    "TOUCHES" INT   NOT NULL,
    "DRIBBLES_COMPLETED" INT   NOT NULL,
    "GOALS" INT   NOT NULL,
    "SHOTS" INT   NOT NULL,
    "SHOTS_ON_TARGET" INT   NOT NULL,
    "PASSES_COMPLETED" INT   NOT NULL,
    "PASSES" INT   NOT NULL,
    "ASSISTS" INT   NOT NULL,
    "TACKLES_WON" INT   NOT NULL
);

ALTER TABLE "Player_Info" ADD CONSTRAINT "fk_Player_Info_Player_id" FOREIGN KEY("Player_id")
REFERENCES "Player_Stats" ("PLAYER_id");

ALTER TABLE "Player_Info" ADD CONSTRAINT "fk_Player_Info_TEAM" FOREIGN KEY("TEAM")
REFERENCES "POSITION" ("TEAM");

