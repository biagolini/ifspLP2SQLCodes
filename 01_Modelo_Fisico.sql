-- Drop the existing CustomerData database if it exists
DROP DATABASE IF EXISTS CustomerData;

-- Create the CustomerData database
CREATE DATABASE CustomerData;

-- Use the CustomerData database schema
-- USE CustomerData;

-- Alter the CustomerData database to use utf8mb4 charset and utf8mb4_unicode_ci collation
-- ALTER DATABASE CustomerData CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create the tblTypeRegion table
CREATE TABLE CustomerData.tblTypeRegion (
 idRegionType INT AUTO_INCREMENT PRIMARY KEY,
 dsType VARCHAR(255) NOT NULL,
 stActive BIT NOT NULL DEFAULT 1
);

-- Create the tblTypeLocation table
CREATE TABLE CustomerData.tblTypeLocation (
 idLocationType INT AUTO_INCREMENT PRIMARY KEY,
 dsType VARCHAR(255) NOT NULL,
 stActive BIT NOT NULL DEFAULT 1
);

-- Create the tblTypePhoneNumber table
CREATE TABLE CustomerData.tblTypePhoneNumber (
 idPhoneNumberType INT AUTO_INCREMENT PRIMARY KEY,
 dsType VARCHAR(255) NOT NULL,
 stActive BIT NOT NULL DEFAULT 1
);

-- Create the tblTypeState table
CREATE TABLE CustomerData.tblTypeState (
 idTypeState INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 dsAbbreviation VARCHAR(2) NOT NULL,
 dsType VARCHAR(100) NOT NULL,
 stActive BOOLEAN NOT NULL DEFAULT 1
);

-- Create the tblTypeGender table
CREATE TABLE CustomerData.tblTypeGender (
 idTypeGender INT AUTO_INCREMENT PRIMARY KEY,
 dsType VARCHAR(255) NOT NULL,
 stActive BIT NOT NULL DEFAULT 1
);

-- Create the tblTypeNationality table
CREATE TABLE CustomerData.tblTypeNationality (
 idTypeNationality INT AUTO_INCREMENT PRIMARY KEY,
 dsAbbreviation VARCHAR(255) NOT NULL,
 dsType VARCHAR(255) NOT NULL,
 stActive BIT NOT NULL DEFAULT 1
);

-- Create the tblTypeTimeZone table
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
ADD CONSTRAINT fk_user_type_timezone FOREIGN KEY (idTypeTimezone) REFERENCES tblTypeTimeZone (idTypeTimezone),
ADD CONSTRAINT fk_user_type_gender FOREIGN KEY (idTypeGender) REFERENCES tblTypeGender (idTypeGender),
ADD CONSTRAINT fk_user_type_location FOREIGN KEY (idLocationType) REFERENCES tblTypeLocation (idLocationType),
ADD CONSTRAINT fk_user_type_region FOREIGN KEY (idRegionType) REFERENCES tblTypeRegion (idRegionType),
ADD CONSTRAINT fk_user_type_state FOREIGN KEY (idTypeState) REFERENCES tblTypeState (idTypeState),
ADD CONSTRAINT fk_user_type_nationality FOREIGN KEY (idTypeNationality) REFERENCES tblTypeNationality (idTypeNationality);

-- Create the tblPhoneNumber table
CREATE TABLE CustomerData.tblPhoneNumber (
 idPhoneNumber INT AUTO_INCREMENT PRIMARY KEY,
 idUser INT,
 dsPhoneNumber VARCHAR(20) NOT NULL,
 idPhoneNumberType INT,
 stActive BIT NOT NULL DEFAULT 1, 
 FOREIGN KEY (idUser) REFERENCES tblUser (idUser),
 FOREIGN KEY (
idPhoneNumberType) REFERENCES tblTypePhoneNumber (idPhoneNumberType)
);

-- Create the tblPicture table
CREATE TABLE CustomerData.tblPicture (
idPicture INT AUTO_INCREMENT PRIMARY KEY,
idUser INT,
dsLargeUrl VARCHAR(255) NOT NULL,
dsMediumUrl VARCHAR(255) NOT NULL,
dsThumbnailUrl VARCHAR(255) NOT NULL,
stActive BIT NOT NULL DEFAULT 1,
FOREIGN KEY (idUser) REFERENCES tblUser (idUser)
);

-- Create the tblTypeLogin table
CREATE TABLE CustomerData.tblTypeLogin (
idTypeLogin INT AUTO_INCREMENT PRIMARY KEY,
dsType VARCHAR(255) NOT NULL,
stActive BIT NOT NULL DEFAULT 1
);

-- Create the tblLogin table
CREATE TABLE CustomerData.tblLogin (
idLogin INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
idUser INTEGER,
idTypeLogin INTEGER NOT NULL,
dsUsername VARCHAR(255) UNIQUE NOT NULL,
dsPassword VARCHAR(255) NOT NULL,
dsPasswordDateTimeLastEdition DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
stActive BIT NOT NULL DEFAULT 1,
FOREIGN KEY (idUser) REFERENCES tblUser (idUser),
FOREIGN KEY (idTypeLogin) REFERENCES tblTypeLogin (idTypeLogin)
);
