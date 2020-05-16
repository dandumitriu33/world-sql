DROP TABLE IF EXISTS city CASCADE;
DROP TABLE IF EXISTS country CASCADE;
DROP TABLE IF EXISTS countrylanguage CASCADE;

-- your code here which creates the tables

CREATE TABLE city (
    id NUMERIC NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    countrycode VARCHAR(3) NOT NULL,
    local_name VARCHAR(100) NOT NULL,
    population INTEGER NOT NULL);

CREATE TABLE country (
    code VARCHAR(3) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    continent VARCHAR(20) NOT NULL,
    region VARCHAR(70) NOT NULL,
    surfacearea NUMERIC NOT NULL,
    established INTEGER,
    population INTEGER NOT NULL,
    life_expectancy NUMERIC,
    another_number NUMERIC,
    yet_another_number NUMERIC,
    local_name VARCHAR(100) NOT NULL,
    governmentform VARCHAR(200) NOT NULL,
    leader VARCHAR(100),
    capital INTEGER REFERENCES city(id),
    international_country_code VARCHAR(2) NOT NULL
    );

CREATE TABLE countrylanguage (
    countrycode VARCHAR(3) REFERENCES country(code) NOT NULL,
    language VARCHAR(50) NOT NULL,
    isofficial BOOLEAN NOT NULL,
    percentage NUMERIC(10, 7) NOT NULL);