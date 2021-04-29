CREATE SCHEMA IF NOT EXISTS inboard;

CREATE SEQUENCE inboard.sq_board START 1;

create table inboard.board (
        id bigint NOT NULL DEFAULT nextval('inboard.sq_board'::regclass),
        name varchar(100),
        description varchar(255),
        creation_date timestamp,
        CONSTRAINT board_pkey PRIMARY KEY (id)
);