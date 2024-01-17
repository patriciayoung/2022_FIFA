-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/BBXFik
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "PLAYER_INFO" (
    "PLAYER_ID" INT   NOT NULL,
    "POSITION_ID" INT   NOT NULL,
    "PLAYER" VARCHAR(50)   NOT NULL,
    -- Changed the column name to PlayerName
    "TEAM" VARCHAR(25)   NOT NULL,
    "AGE" INT   NOT NULL,
    "PLAYER_VALUE" FLOAT   NOT NULL,
    "OVERALL" INT   NOT NULL,
    CONSTRAINT "pk_PLAYER_INFO" PRIMARY KEY (
        "PLAYER_ID"
     )
);

CREATE TABLE "POSITION" (
    "POSITION_ID" INT   NOT NULL,
    "POSITION" VARCHAR(5)   NOT NULL,
    "TEAM" VARCHAR(25)   NOT NULL,
    "TOUCHES" INT   NOT NULL,
    CONSTRAINT "pk_POSITION" PRIMARY KEY (
        "POSITION_ID"
     )
);

CREATE TABLE "PLAYER_STATS" (
    "PLAYER_ID" INT   NOT NULL,
    "DRIBBLES_COMPLETED" INT   NOT NULL,
    "GOALS" INT   NOT NULL,
    "SHOTS" INT   NOT NULL,
    "SHOTS_ON_TARGET" INT   NOT NULL,
    "PASSES_COMPLETED" INT   NOT NULL,
    "PASSES" INT   NOT NULL,
    "ASSISTS" INT   NOT NULL,
    "TACKLES_WON" INT   NOT NULL,
    CONSTRAINT "pk_PLAYER_STATS" PRIMARY KEY (
        "PLAYER_ID"
     )
);

ALTER TABLE "PLAYER_INFO" ADD CONSTRAINT "fk_PLAYER_INFO_PLAYER_ID" FOREIGN KEY("PLAYER_ID")
REFERENCES "PLAYER_STATS" ("PLAYER_ID");

ALTER TABLE "PLAYER_INFO" ADD CONSTRAINT "fk_PLAYER_INFO_POSITION_ID" FOREIGN KEY("POSITION_ID")
REFERENCES "POSITION" ("POSITION_ID");

