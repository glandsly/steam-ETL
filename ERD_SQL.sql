-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE game_table (
    id int   NOT NULL,
    game_title varchar   NOT NULL,
    game_description VARCHAR   NOT NULL,
    genre VARCHAR   NOT NULL,
    original_price INT   NOT NULL,
    release_date VARCHAR   NOT NULL,
    developer VARCHAR   NOT NULL,
    review_count INT   NOT NULL,
    CONSTRAINT pk_game_table PRIMARY KEY (
        id
     )
);

CREATE TABLE review_table (
    id int   NOT NULL,
    game_title VARCHAR   NOT NULL,
    review VARCHAR   NOT NULL,
    recommendation VARCHAR   NOT NULL,
    hour_played INT   NOT NULL,
    date_posted VARCHAR   NOT NULL,
    game_id INT   NOT NULL,
    CONSTRAINT pk_review_table PRIMARY KEY (
        id
     )
);

CREATE TABLE user_table (
    id int   NOT NULL,
    CONSTRAINT pk_user_table PRIMARY KEY (
        id
     )
);

CREATE TABLE purchase_table (
    id int   NOT NULL,
    user_id INT   NOT NULL,
    game_title VARCHAR   NOT NULL,
    play_time INT   NOT NULL,
    game_id INT   NOT NULL,
    CONSTRAINT pk_purchase_table PRIMARY KEY (
        id
     )
);

ALTER TABLE review_table ADD CONSTRAINT fk_review_table_game_id FOREIGN KEY(game_id)
REFERENCES game_table (id);

ALTER TABLE purchase_table ADD CONSTRAINT fk_purchase_table_user_id FOREIGN KEY(user_id)
REFERENCES user_table (id);

ALTER TABLE purchase_table ADD CONSTRAINT fk_purchase_table_game_id FOREIGN KEY(game_id)
REFERENCES game_table (id);

