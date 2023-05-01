USE CustomerData;

-- Insert data into tblTypeRegion table
INSERT INTO tblTypeRegion (dsType) VALUES 
('Norte'),
('Nordeste'), 
('Centro-Oeste'), 
('Sudeste'), 
('Sul');

-- Insert data into tblTypeLocation table
INSERT INTO tblTypeLocation (dsType) VALUES 
('Especial'),
('Normal'), 
('Trabalhoso');

-- Insert data into tblTypeState table
INSERT INTO tblTypeState(dsAbbreviation,dsType) VALUES
('AC','Acre'),
('AL','Alagoas'),
('AP','Amapa'),
('AM','Amazonas'),
('BA','Bahia'),
('CE','Ceara'),
('DF','Distrito Federal'),
('ES','Esporito Santo'),
('GO','Goias'),
('MA','Maranhao'),
('MT','Mato Grosso'),
('MS','Mato Grosso do Sul'),
('MG','Minas Gerais'),
('PA','Para'),
('PB','Paraiba'),
('PR','Parana'),
('PE','Pernambuco'),
('PI','Piaui'),
('RJ','Rio de Janeiro'),
('RN','Rio Grande do Norte'),
('RS','Rio Grande do Sul'),
('RO','Rondonia'),
('RR','Roraima'),
('SC','Santa Catarina'),
('SP','Sao Paulo'),
('SE','Sergipe'),
('TO','Tocantins');

-- Insert data into tblTypePhoneNumber table
INSERT INTO tblTypePhoneNumber (dsType) VALUES 
('Movel'),
('Casa'), 
('Trabalho'),
('Outro');

-- Insert data into tblTypeGender table
INSERT INTO tblTypeGender (dsType) VALUES 
('M'),
('F'),
('Nao Declarado');

-- Insert data into tblTypeTimeZone table
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

-- Insert data into tblTypeNationality table
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

-- Insert data into tblUser table
INSERT INTO tblUser ( idTypeGender, dsTitle, dsFirstName, dsLastName,  idLocationType,  idRegionType,  dsStreet,  dsCity,  idTypeState, dsPostcode,  dsLatitude,  dsLongitude,  idTypeTimezone, dsEmail,  dtBirthday,  dtRegistered, idTypeNationality) VALUES 
(1, 'mr', 'Joselino', 'Alves', 1, 1, 'Rua Espirito Santo 2095', 'Sao Jose de Ribamar', 16,  '96895000', -35.868700, -131.880100, 1,  'joselino@gmail.com', '1996-01-09', '2014-02-09', 1),
(1, 'mr', 'Antonelo', 'da Conceicao', 2, 2, ' Rua Rui Barbosa 8986', 'Santo Andre', 2,  '40751000', -69.870400, -165.954500, 1,  'antonelo@email.com', '1956-02-12', '2005-12-05', 1),
(1, 'mr', 'João', 'Silva', 1, 1, 'Rua das Flores 100', 'Rio de Janeiro', 18, '20010020', -22.908333, -43.196388, 1, 'joao.silva@gmail.com', '1990-02-15', '2015-03-20', 1),
(2, 'ms', 'Maria', 'Santos', 2, 2, 'Avenida Paulista 200', 'São Paulo', 25, '01311000', -23.550520, -46.633308, 1, 'maria.santos@gmail.com', '1985-08-10', '2016-09-05', 1),
(1, 'mr', 'José', 'Pereira', 3, 3, 'Rua das Pedras 300', 'Belo Horizonte', 11, '30190010', -19.917599, -43.934093, 1, 'jose.pereira@gmail.com', '1975-12-05', '2017-11-01', 1),
(2, 'ms', 'Ana', 'Carvalho', 2, 4, 'Avenida Beira Mar 400', 'Florianópolis', 24, '88015200', -27.597300, -48.549610, 1, 'ana.carvalho@gmail.com', '1982-06-30', '2018-01-15', 1),
(1, 'mr', 'Antônio', 'Oliveira', 1, 5, 'Rua da Praia 500', 'Porto Alegre', 21, '90010030', -30.032499, -51.230377, 1, 'antonio.oliveira@gmail.com', '1995-10-20', '2019-05-10', 1),
(2, 'ms', 'Francisca', 'Lima', 3, 3, 'Praça da República 600', 'Salvador', 5, '40050010', -12.977749, -38.501630, 1, 'francisca.lima@gmail.com', '1960-05-15', '2020-07-01', 1),
(1, 'mr', 'Raimundo', 'Barbosa', 2, 2, 'Rua do Ouro 700', 'Recife', 17, '50010010', -8.052240, -34.928610, 1, 'raimundo.barbosa@gmail.com', '1970-01-30', '2021-08-20', 1),
(1, 'mr', 'Pedro', 'Costa', 2, 4, 'Rua das Palmeiras 900', 'Fortaleza', 6, '60060010', -3.730451, -38.521799, 1, 'pedro.costa@gmail.com', '1988-03-05', '2013-02-25', 1),
(2, 'ms', 'Laura', 'Mendes', 1, 5, 'Praça da Estação 1000', 'Natal', 20, '59010010', -5.793570, -35.198999, 1, 'laura.mendes@gmail.com', '1997-09-30', '2014-10-15', 1),
(1, 'mr', 'Rafael', 'Barros', 3, 3, 'Avenida das Américas 1100', 'Manaus', 4, '69010010', -3.131633, -59.999039, 1, 'rafael.barros@gmail.com', '1978-07-25', '2015-12-10', 1),
(2, 'ms', 'Márcia', 'Cardoso', 2, 2, 'Rua do Mercado 1200', 'Goiânia', 9, '74010010', -16.686891, -49.264794, 1, 'marcia.cardoso@gmail.com', '1981-11-20', '2017-01-05', 1),
(1, 'mr', 'Gustavo', 'Cavalcante', 1, 1, 'Avenida da Liberdade 1300', 'Teresina', 19, '64000010', -5.089640, -42.809588, 1, 'gustavo.cavalcante@gmail.com', '1993-06-15', '2018-03-25', 1),
(2, 'ms', 'Renata', 'Fonseca', 3, 4, 'Rua do Imperador 1400', 'Belém', 14, '66010010', -1.459649, -48.492245, 1, 'renata.fonseca@gmail.com', '1965-05-30', '2019-06-15', 1),
(1, 'mr', 'André', 'Castro', 2, 5, 'Praça da Sé 1500', 'Campo Grande', 12, '79010010', -20.469710, -54.620121, 1, 'andre.castro@gmail.com', '1972-12-10', '2020-08-30', 1) ,
(2, 'ms', 'Beatriz', 'Viana', 1, 1, 'Rua do Bosque 1600', 'Aracaju', 26, '49010010', -10.947267, -37.073082, 1, 'beatriz.viana@gmail.com', '1998-08-25', '2021-11-15', 1);

-- Insert data into tblPhoneNumber table
INSERT INTO tblPhoneNumber (idUser, dsPhoneNumber, idPhoneNumberType) VALUES 
(1, '+551123456789', 1),
(2, '+558587478125', 2),
(2, '+558724140993', 1);

-- Insert data into tblPicture table
INSERT INTO tblPicture (idUser, dsLargeUrl, dsMediumUrl, dsThumbnailUrl) VALUES
(1, 'https://randomuser.me/api/portraits/men/75.jpg', 'https://randomuser.me/api/portraits/med/men/75.jpg', 'https://randomuser.me/api/portraits/thumb/men/75.jpg'),
(2, 'https://randomuser.me/api/portraits/men/8.jpg', 'https://randomuser.me/api/portraits/med/men/8.jpg', 'https://randomuser.me/api/portraits/thumb/men/8.jpg');

-- Insert data into tblTypeLogin table
INSERT INTO tblTypeLogin (dsType) VALUES
('Regular'),
('Admin');

-- Insert data into tblLogin table
INSERT INTO tblLogin(dsUsername,dsPassword, idTypeLogin,idUser) VALUES
('admin', '$2a$10$2.P3Sj9JMG5pHGJYZAKA.eMX97aUcQwMWRNX9Puo1k2YBQuY0BvKS',1,NULL),
('marketing', '$2a$10$2.P3Sj9JMG5pHGJYZAKA.eMX97aUcQwMWRNX9Puo1k2YBQuY0BvKS',1,NULL),
('miguel@email.com', '$2a$10$WXfQsblcdtTpL/dndZUC9.NUXDk6bvOTpCr33N7E2/cB/U83RTfvu',2,1),
('helena@email.com', '$2a$10$WXfQsblcdtTpL/dndZUC9.NUXDk6bvOTpCr33N7E2/cB/U83RTfvu',2,2);
