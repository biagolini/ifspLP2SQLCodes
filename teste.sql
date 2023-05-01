-- Drop the existing CustomerData database if it exists
DROP DATABASE IF EXISTS CustomerData;

-- Create the CustomerData database
CREATE DATABASE CustomerData;


-- Create the tblTypeTimezone table
CREATE TABLE CustomerData.tblTypeTimeZone (
 idTypeTimezone INT AUTO_INCREMENT PRIMARY KEY,
 dsTimezoneOffset VARCHAR(255) NOT NULL,
 dsTimezoneDescription VARCHAR(255) NOT NULL,
 stActive BIT NOT NULL DEFAULT 1
);

-- Create the tblUser table
CREATE TABLE CustomerData.tblUser (
 idUser INT AUTO_INCREMENT PRIMARY KEY,
 idTypeGender INT,
 idLocationType INT,
 idRegionType INT,
 idTypeState INT,
 idTypeTimezone INT,
 idTypeNationality INT,
 dsTitle VARCHAR(255),
 dsFirstName VARCHAR(255) NOT NULL,
 dsLastName VARCHAR(255) NOT NULL,
 dsStreet VARCHAR(255),
 dsCity VARCHAR(255),
 dsPostcode VARCHAR(255),
 dsLatitude DECIMAL(9, 6),
 dsLongitude DECIMAL(9, 6),
 dsEmail VARCHAR(255) NOT NULL,
 dtBirthday DATETIME,
 dtRegistered DATETIME DEFAULT CURRENT_TIMESTAMP,
 stActive BIT NOT NULL DEFAULT 1
);


-- Add foreign key constraints to tblUser table
ALTER TABLE CustomerData.tblUser
ADD CONSTRAINT fk_user_type_timezone FOREIGN KEY (idTypeTimezone) REFERENCES tblTypeTimezone (idTypeTimezone);

