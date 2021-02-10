CREATE DATABASE finnhub

CREATE TABLE finnhub."Users"
(
    user_id serial,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    created_on timestamp without time zone NOT NULL,
    last_login timestamp without time zone,
    PRIMARY KEY (user_id),
    CONSTRAINT username_unique UNIQUE (username),
    CONSTRAINT email_unique UNIQUE (email)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE finnhub."Users"
    OWNER to postgresadmin;
