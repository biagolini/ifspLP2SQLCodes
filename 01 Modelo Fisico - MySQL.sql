-- -----------------------------------------------------
-- Apagar BD antigo, caso exista
-- ----------------------------------------------------- 
DROP DATABASE IF EXISTS CustomerData;

-- -----------------------------------------------------
-- Criar BD
-- -----------------------------------------------------
CREATE DATABASE CustomerData;

-- -----------------------------------------------------
-- Schema
-- -----------------------------------------------------
USE CustomerData;


-- -----------------------------------------------------
-- tblTypeRegion
-- -----------------------------------------------------
CREATE TABLE tblTypeRegion (
  idRegionType INT AUTO_INCREMENT PRIMARY KEY,
  dsType VARCHAR(255) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1
);

-----------------------------------------------------
-- tblTypeLocation
-- -----------------------------------------------------
CREATE TABLE tblTypeLocation (
  idLocationType  INT AUTO_INCREMENT PRIMARY KEY,
  dsType VARCHAR(255) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1
);

-- -----------------------------------------------------
-- tblTypePhoneNumber
-- -----------------------------------------------------
CREATE TABLE tblTypePhoneNumber (
  idPhoneNumberType INT AUTO_INCREMENT PRIMARY KEY,
  dsType VARCHAR(255) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1
);

-- -----------------------------------------------------
-- tblTypeState
-- -----------------------------------------------------
CREATE TABLE tblTypeState (
  idTypeState  INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dsAbbreviation VARCHAR(2) NOT NULL,
  dsType VARCHAR(100) NOT NULL,
  stActive BOOLEAN NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblTypeGender
-- -----------------------------------------------------
CREATE TABLE tblTypeGender (
  idTypeGender INT AUTO_INCREMENT PRIMARY KEY,
  dsType VARCHAR(255) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblTypeTimeZone
-- -----------------------------------------------------
CREATE TABLE tblTypeTimezone (
  idTypeTimezone  INT AUTO_INCREMENT PRIMARY KEY,
  dsTimezoneOffset VARCHAR(255) NOT NULL,
  dsTimezoneDescription VARCHAR(255) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblNationality
-- -----------------------------------------------------
CREATE TABLE tblTypeNationality (
  idTypeNationality  INT AUTO_INCREMENT PRIMARY KEY,
  dsAbbreviation VARCHAR(255) NOT NULL,
  dsType VARCHAR(255) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1
);

-- -----------------------------------------------------
-- tblUser
-- -----------------------------------------------------
CREATE TABLE tblUser (
  idUser INT AUTO_INCREMENT PRIMARY KEY,
  idTypeGender INT,
  dsTitle VARCHAR(255),
  dsFirstName VARCHAR(255) NOT NULL,
  dsLastName VARCHAR(255) NOT NULL,
  idLocationType INT,
  idRegionType INT,  
  dsStreet VARCHAR(255),
  dsCity VARCHAR(255),
  idTypeState INT,
  dsPostcode VARCHAR(255),
  dsLatitude DECIMAL(9, 6),
  dsLongitude DECIMAL(9, 6),
  idTypeTimezone INT,
  dsEmail VARCHAR(255) NOT NULL,
  dtBirthday DATETIME,
  dtRegistered DATETIME DEFAULT  CURRENT_TIMESTAMP,  
  idTypeNationality INT,
  stActive BIT NOT NULL DEFAULT 1, 
  FOREIGN KEY (idTypeGender) REFERENCES tblTypeGender (idTypeGender),
  FOREIGN KEY (idTypeTimezone) REFERENCES tblTypeTimezone (idTypeTimezone),
  FOREIGN KEY (idRegionType) REFERENCES tblTypeRegion (idRegionType),
  FOREIGN KEY (idLocationType) REFERENCES tblTypeLocation (idLocationType),
  FOREIGN KEY (idTypeState) REFERENCES tblTypeState (idTypeState),
  FOREIGN KEY (idTypeNationality) REFERENCES tblTypeNationality (idTypeNationality)
);


-- -----------------------------------------------------
-- tblPhoneNumber
-- -----------------------------------------------------
CREATE TABLE tblPhoneNumber (
  idPhoneNumber INT AUTO_INCREMENT PRIMARY KEY,
  idUser INT,
  dsPhoneNumber VARCHAR(20) NOT NULL,
  idPhoneNumberType  INT,
  stActive BIT NOT NULL DEFAULT 1, 
  FOREIGN KEY (idUser) REFERENCES tblUser (idUser),
  FOREIGN KEY (idPhoneNumberType) REFERENCES tblTypePhoneNumber (idPhoneNumberType)
);



-- -----------------------------------------------------
-- tblPicture
-- -----------------------------------------------------
CREATE TABLE tblPicture (
  idPicture INT AUTO_INCREMENT PRIMARY KEY,
  idUser INT,
  dsLargeUrl VARCHAR(255) NOT NULL,
  dsMediumUrl VARCHAR(255) NOT NULL,
  dsThumbnailUrl VARCHAR(255) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1, 
  FOREIGN KEY (idUser) REFERENCES tblUser (idUser)
);


-- -----------------------------------------------------
-- tblTypeLogin
-- -----------------------------------------------------
CREATE TABLE tblTypeLogin (
  idTypeLogin INT  AUTO_INCREMENT PRIMARY KEY,
  dsType VARCHAR(255) NOT NULL,
  stActive BIT NOT NULL DEFAULT 1
);


-- -----------------------------------------------------
-- tblLogin
-- -----------------------------------------------------
CREATE TABLE tblLogin (
  idLogin INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  idUser  INTEGER,  
  idTypeLogin INTEGER NOT NULL,
  dsUsername VARCHAR(255) UNIQUE NOT NULL,  
  dsPassword  VARCHAR(255) NOT NULL,
  dsPasswordDateTimeLastEdition  DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP,
  stActive BIT NOT NULL DEFAULT 1, 
  FOREIGN KEY (idUser) REFERENCES tblUser (idUser),
  FOREIGN KEY (idTypeLogin) REFERENCES tblTypeLogin (idTypeLogin)
);

