-- Dropping database to recreate it
DROP DATABASE PersonsDB;
-- Creating database
CREATE DATABASE PersonsDB;
-- Run queries on this database
USE PersonsDB;

-- Create the persons table
CREATE TABLE Person(
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    dob DATE NOT NULL,
    -- Adding appropriate constraints
    -- Adapted from https://stackoverflow.com/questions/15560004/mysql-check-constraint-for-email-addresses
    CONSTRAINT email_check CHECK (email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    -- Constraint to check dob entered is not less than 01/01/1900, date in future is checked by trigger
    -- SQL handles dates in YYYY-mm-dd format
    CONSTRAINT dob_check CHECK (dob >= '1900-01-01')
);

-- Create country table
CREATE TABLE Country(
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(100) NOT NULL UNIQUE
);

-- Create city table
CREATE TABLE City(
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES Country(country_id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Create zip code table
CREATE TABLE ZipCode(
    zip_code_id INT PRIMARY KEY AUTO_INCREMENT,
    zip_code VARCHAR(9) NOT NULL,
    city_id INT NOT NULL,
    -- Setting references
    FOREIGN KEY (city_id) REFERENCES City(city_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Create the neighbour table
-- Check constraint adapted from 
-- https://stackoverflow.com/questions/15560004/mysql-check-constraint-for-email-addresses
CREATE TABLE Neighbour(
    neighbour_id INT PRIMARY KEY AUTO_INCREMENT,
    neighbour_first_name VARCHAR(200) NOT NULL,
    neighbour_last_name VARCHAR(200) NOT NULL,
    neighbour_email VARCHAR(200)  NOT NULL UNIQUE,
    CONSTRAINT neighbour_email_check CHECK (neighbour_email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')
);

-- Create address table
CREATE TABLE Address(
    address_id INT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(200) NOT NULL,
    zip_code_id INT NOT NULL,
    neighbour_1_id INT NOT NULL,
    neighbour_2_id INT NOT NULL,
    FOREIGN KEY (zip_code_id) REFERENCES ZipCode(zip_code_id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (neighbour_1_id) REFERENCES Neighbour(neighbour_id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (neighbour_2_id) REFERENCES Neighbour(neighbour_id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Create PersonAddress table
CREATE TABLE PersonAddress(
    person_id INT NOT NULL,
    address_id INT NOT NULL,
    -- Creating composite key
    PRIMARY KEY (person_id, address_id),
    -- Setting references
    FOREIGN KEY (person_id) REFERENCES Person(person_id) 
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (address_id) REFERENCES Address(address_id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- Create Favourite table
CREATE TABLE Favourite(
    favourite_id INT PRIMARY KEY AUTO_INCREMENT,
    favourite_type VARCHAR(200) NOT NULL,
    favourite_name VARCHAR(200) NOT NULL UNIQUE
);

-- Create PersonFavourite table
CREATE TABLE PersonFavourite(
    person_id INT NOT NULL,
    favourite_id INT NOT NULL,
    -- Creating composite key
    PRIMARY KEY (person_id, favourite_id),
    -- Setting references
    FOREIGN KEY (person_id) REFERENCES Person(person_id) 
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (favourite_id) REFERENCES Favourite(favourite_id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);


-- Trigger to check inputted dob is not in the future on insert
CREATE TRIGGER dob_check_future
-- Before person is inserted
BEFORE INSERT ON Person
-- For each person being inserted
FOR EACH ROW
BEGIN
    -- If the inputted dob is greater than the current date
    IF NEW.dob > CURRENT_DATE THEN
        -- This will throw an error and prevent the data being inserted
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Date of birth is in the future.';
    END IF;
END;

-- Trigger to check inputted dob is not in the future on update
CREATE TRIGGER dob_check_future_update
-- Before person is updated
BEFORE UPDATE ON Person
-- For each person being inserted
FOR EACH ROW
BEGIN
    -- If the inputted dob is greater than the current date
    IF NEW.dob > CURRENT_DATE THEN
        -- This will throw an error and prevent the data being inserted
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Date of birth is in the future.';
    END IF;
END;


-- Procedure which will clean up unused data scheduled to run every day
-- Checking what favourites and addresses
-- are not part of a person relationship
-- Using a procedure as it is a convenient way to execute block of SQL
CREATE PROCEDURE RemoveUnusedData()
BEGIN
    
    -- Deleting favourites which do not belong to a person
    -- ON DELETE RESTRICT not triggered as no relationships
    DELETE FROM Favourite
    WHERE favourite_id
    NOT IN
    (SELECT DISTINCT favourite_id FROM PersonFavourite);

    -- Deleting addresses which do not belong to a person
    -- ON DELETE RESTRICT not triggered as no relationships
    DELETE FROM Address
    WHERE address_id
    NOT IN
    (SELECT DISTINCT address_id FROM PersonAddress);

    -- Delete unused neighbours
    DELETE FROM Neighbour
    WHERE neighbour_id
    NOT IN
    (SELECT DISTINCT neighbour_1_id FROM Address);

    DELETE FROM Neighbour
    WHERE neighbour_id
    NOT IN
    (SELECT DISTINCT neighbour_2_id FROM Address);

    -- Delete unused zip codes, cities, and countries
    DELETE FROM ZipCode 
    WHERE zip_code NOT IN 
    (SELECT DISTINCT zip_code FROM Address);
    
    DELETE FROM City 
    WHERE city_id NOT IN 
    (SELECT DISTINCT city_id FROM ZipCode);
    
    DELETE FROM Country 
    WHERE country_id NOT IN 
    (SELECT DISTINCT country_id FROM City);
END;

-- Enabling the event_scheduler
SET GLOBAL event_scheduler = ON;

-- Adapted from:
-- https://stackoverflow.com/questions/9621355/how-to-schedule-a-mysql-query
-- Creating the event which will run the procedure to clean-up the data
-- Runs every day at midnight
CREATE EVENT DataClean
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_DATE
DO
BEGIN
    CALL RemoveUnusedData();
END;



