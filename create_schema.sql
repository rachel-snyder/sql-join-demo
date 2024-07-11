DROP TABLE IF EXISTS passports CASCADE;

CREATE TABLE passports (
    id SERIAL PRIMARY KEY,
    passport_number BIGINT UNIQUE,
    expiration_date DATE
);

\COPY passports FROM '/Users/rachelsnyder/code_platoon/sql-join-demo/passports.csv' WITH CSV HEADER;

---------------------------------------------

DROP TABLE IF EXISTS people;

CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    pass_num BIGINT UNIQUE,
    age INT,
    FOREIGN KEY (pass_num) REFERENCES passports(passport_number)
);

\COPY people FROM '/Users/rachelsnyder/code_platoon/sql-join-demo/people.csv' WITH CSV HEADER;


