USE CustomerData;

-- -----------------------------------------------------
-- tblRegionType
-- -----------------------------------------------------
-- Insert Regiond
INSERT INTO tblTypeRegion (dsType) VALUES 
('Norte'), 
('Nordeste'), 
('Centro-Oeste'), 
('Sudeste'), 
('Sul');

SELECT * FROM tblTypeRegion;

-- -----------------------------------------------------
-- tblLocationType
-- -----------------------------------------------------
INSERT INTO tblTypeLocation (dsType) VALUES 
('Especial'),
('Normal'), 
('Trabalhoso');

SELECT * FROM tblTypeLocation;


-- -----------------------------------------------------
-- tblTypeState
-- -----------------------------------------------------
INSERT INTO tblTypeState(dsAbbreviation,dsType) VALUES
('AC','Acre'),
('AL','Alagoas'),
('AP','Amapá'),
('AM','Amazonas'),
('BA','Bahia'),
('CE','Ceará'),
('DF','Distrito Federal'),
('ES','Espírito Santo'),
('GO','Goiás'),
('MA','Maranhão'),
('MT','Mato Grosso'),
('MS','Mato Grosso do Sul'),
('MG','Minas Gerais'),
('PA','Pará'),
('PB','Paraíba'),
('PR','Paraná'),
('PE','Pernambuco'),
('PI','Piauí'),
('RJ','Rio de Janeiro'),
('RN','Rio Grande do Norte'),
('RS','Rio Grande do Sul'),
('RO','Rondônia'),
('RR','Roraima'),
('SC','Santa Catarina'),
('SP','São Paulo'),
('SE','Sergipe'),
('TO','Tocantins');
SELECT * FROM tblTypeState;


-- -----------------------------------------------------
-- tblTypePhoneNumber
-- -----------------------------------------------------
INSERT INTO tblTypePhoneNumber (dsType) VALUES 
('Movel'),
('Casa'), 
('Trabalho'),
('Outro');

SELECT * FROM tblTypePhoneNumber;


-- -----------------------------------------------------
-- tblTypeGender
-- -----------------------------------------------------
INSERT INTO tblTypeGender (dsType) VALUES 
('M'),
('F'),
('Nao Declarado');

SELECT * FROM tblTypeGender;


-- -----------------------------------------------------
-- tblTypeTimeZone
-- -----------------------------------------------------
INSERT INTO tblTypeTimeZone (dsTimezoneOffset, dsTimezoneDescription) VALUES
('-3:00', 'Brazil Time (BRT)'),
('-12:00', 'Baker Island Time (BIT)'),
('-11:00', 'Niue Time (NUT)'),
('-10:00', 'Hawaii-Aleutian Standard Time (HAST)'),
('-9:00', 'Alaska Standard Time (AKST)'),
('-8:00', 'Pacific Standard Time (PST)'),
('-7:00', 'Mountain Standard Time (MST)'),
('-6:00', 'Central Standard Time (CST)'),
('-5:00', 'Eastern Standard Time (EST)'),
('-4:00', 'Atlantic Standard Time (AST)'),
('-3:00', 'Argentina Time (ART)'),
('-2:00', 'South Georgia and South Sandwich Islands Time (GST)'),
('-1:00', 'Cape Verde Time (CVT)'),
('0:00', 'Greenwich Mean Time (GMT)'),
('1:00', 'Central European Time (CET)'),
('2:00', 'Eastern European Time (EET)'),
('3:00', 'Moscow Standard Time (MSK)'),
('4:00', 'Gulf Standard Time (GST)'),
('5:00', 'Pakistan Standard Time (PKT)'),
('5:30', 'Indian Standard Time (IST)'),
('6:00', 'Bangladesh Standard Time (BST)'),
('7:00', 'Indochina Time (ICT)'),
('8:00', 'China Standard Time (CST)'),
('9:00', 'Japan Standard Time (JST)'),
('10:00', 'Australian Eastern Standard Time (AEST)'),
('11:00', 'Vanuatu Standard Time (VUT)'),
('12:00', 'New Zealand Standard Time (NZST)');

-- -----------------------------------------------------
-- tblTypeNationality
-- -----------------------------------------------------
INSERT INTO tblTypeNationality (dsAbbreviation, dsType) VALUES
('BR', 'Brazil'),
('AR', 'Argentina'),
('AU', 'Australia'),
('CA', 'Canada'),
('CN', 'China'),
('DE', 'Germany'),
('EG', 'Egypt'),
('ES', 'Spain'),
('FR', 'France'),
('GB', 'United Kingdom'),
('ID', 'Indonesia'),
('IL', 'Israel'),
('IN', 'India'),
('IT', 'Italy'),
('JP', 'Japan'),
('KE', 'Kenya'),
('MX', 'Mexico'),
('NG', 'Nigeria'),
('NO', 'Norway'),
('NZ', 'New Zealand'),
('RU', 'Russia'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('US', 'United States'),
('ZA', 'South Africa');

-- -----------------------------------------------------
-- tblUser
-- -----------------------------------------------------
INSERT INTO tblUser (
  idTypeGender, 
  dsTitle, 
  dsFirstName, 
  dsLastName, 
  idLocationType, 
  idRegionType, 
  dsStreet, 
  dsCity, 
  idTypeState,
  dsPostcode, 
  dsLatitude, 
  dsLongitude, 
  idTypeTimezone,
  dsEmail, 
  dtBirthday, 
  dtRegistered,
  idTypeNationality) VALUES 
(
  1, 'mr', 'Joselino', 'Alves', 1, 1, 'Rua Espirito Santo 2095', 'São José de Ribamar', 16,
  '96895000', -35.868700, -131.880100, 1,
  'joselino@gmail.com', '1996-01-09 00:00:00', '2014-02-09 19:19:32', 1
),
(
  1, 'mr', 'Antonelo', 'da Conceição', 2, 2, ' Rua Rui Barbosa 8986', 'Santo André', 2,
  '40751000', -69.870400, -165.954500, 1,
  'antonelo@email.com', '1956-02-12 00:00:00', '2005-12-05 15:22:53', 1
);

SELECT * FROM tblUser;

-- -----------------------------------------------------
-- tblPhoneNumber
-- -----------------------------------------------------
INSERT INTO tblPhoneNumber (idUser, dsPhoneNumber, idPhoneNumberType) VALUES 
(1, '+551123456789', 1),
(2, '+558587478125', 2),
(2, '+558724140993', 1);

SELECT * FROM tblPhoneNumber;

-- -----------------------------------------------------
-- tblPicture
-- -----------------------------------------------------
INSERT INTO tblPicture (idUser, dsLargeUrl, dsMediumUrl, dsThumbnailUrl) VALUES
(1, 'https://randomuser.me/api/portraits/men/75.jpg', 'https://randomuser.me/api/portraits/med/men/75.jpg', 'https://randomuser.me/api/portraits/thumb/men/75.jpg'),
(2, 'https://randomuser.me/api/portraits/men/8.jpg', 'https://randomuser.me/api/portraits/med/men/8.jpg', 'https://randomuser.me/api/portraits/thumb/men/8.jpg');

SELECT * FROM tblPicture;



-- -----------------------------------------------------
-- tblTypeLogin
-- -----------------------------------------------------
INSERT INTO tblTypeLogin (dsType) VALUES
('Regular'),
('Admin');

SELECT * FROM tblTypeLogin;

-- -----------------------------------------------------
-- tblLogin
-- -----------------------------------------------------
INSERT INTO tblLogin(dsUsername,dsPassword, idTypeLogin,idUser) VALUES
('admin', '$2a$10$2.P3Sj9JMG5pHGJYZAKA.eMX97aUcQwMWRNX9Puo1k2YBQuY0BvKS',1,NULL),
('marketing', '$2a$10$2.P3Sj9JMG5pHGJYZAKA.eMX97aUcQwMWRNX9Puo1k2YBQuY0BvKS',1,NULL),
('miguel@email.com', '$2a$10$WXfQsblcdtTpL/dndZUC9.NUXDk6bvOTpCr33N7E2/cB/U83RTfvu',2,1),
('helena@email.com', '$2a$10$WXfQsblcdtTpL/dndZUC9.NUXDk6bvOTpCr33N7E2/cB/U83RTfvu',2,2);

SELECT * FROM tblLogin;
