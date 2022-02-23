psql 

CREATE DATABASE next_vroom_db;

\c next_vroom_db;

CREATE TABLE cars(id SERIAL PRIMARY KEY, brand TEXT, model TEXT, year REAL);

CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT, password_digest TEXT);