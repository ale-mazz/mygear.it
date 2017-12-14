DROP TABLE IF EXISTS cuffie;
CREATE TABLE cuffie (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS PC;
CREATE TABLE PC (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS alimentatori;
CREATE TABLE alimentatori (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS CPU;
CREATE TABLE CPU (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS memorie_interne;
CREATE TABLE memorie_interne (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS memorie_ram;
CREATE TABLE memorie_ram (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS monitor;
CREATE TABLE monitor (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS mouse_tastiere;
CREATE TABLE mouse_tastiere (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS raffreddamento;
CREATE TABLE raffreddamento (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_audio;
CREATE TABLE schede_audio (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_madri;
CREATE TABLE schede_madri (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_video;
CREATE TABLE schede_video (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` char(50)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;



INSERT INTO alimentatori (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('001', 'Cooler Master MasterWatt 65', 'Alimentatore Notebook - 65 Watt', '34,90'),
('002', 'Cooler Master MasterWatt 70', 'Alimentatore Notebook - 70 Watt', '39,90'),
('003', 'Cooler Master MasterWatt 90', 'Alimentatore Notebook - 90 Watt', '44,90'),
('004', 'TECNOWARE FREE SILENT 520 W', 'Alimentatore Interno Per Personal Computer 520 W', '24,90'),
('005', 'HAMLET ALIMENTATORE NOTEBOOK 90W XPWNB90C', 'Alimentatore Universale Compatto, Per Computer Portatili)', '34,90'),
('006', 'ISY ALIMENTATORE NOTEBOOK 19V', 'Alimentatore notebook 19V/90W', '42,90');

INSERT INTO cpu (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('011', 'Intel Core i3-6300 3,8 GHz (Skylake) Socket 115', 'CPU dual core da Intel con 3,8 GHz max, 4Mb Cache, chipset grafico HD 530, 47 Watt TDP con dissipatore', '189,90'),
('012', 'Intel Core i5-6600 3,3 GHz (Skylake) Socket 115', 'performante CPU Quadcore da Intel con 3,9 GHz max, 6Mb Cache, chipset grafico HD 530, 65 Watt TDP con dissipatore', '249,90'),
('013', 'Intel Core i7-7700 3,6 GHz (Kaby Lake) Socket 117', 'performante CPU Quadcore da Intel serie Kaby-Lake con 4,2 GHz max, 8Mb Cache, chipset grafico HD 630, 65 Watt', '349,90'),
('014', 'Intel Core i7-7700K (Kaby Lake) PreTestato @ 5,1 Ghz - Tray', 'performante CPU Quadcore da Intel serie Kaby-Lake pretestato e certificato per OC fino a 5,1 GHz', '599,90'),
('015', 'Intel Core i7-8700K 3,7 GHz (Coffee Lake) Socket 1151 - boxed', 'performante CPU Intel Hexa-Core serie Cofee Lake con 3,7/4,7 GHz max, 12Mb Cache L3, chipset grafico HD 630, 95 Watt TDP', '439,90'),
('016', 'Intel Core i7-8700K (Coffee Lake) PreTestato @ 5,0 Ghz - Tray', 'performante CPU Hexa-Core da Intel serie Coffee Lake pretestato e certificato per OC fino a 5,0 GHz', '529,90');

INSERT INTO cuffie (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Aorus E1 Headset, Aluminum In-Ear Hi-Fi', 'headset di classe superiore da Aorus con tecnologia in-ear, driver da 9mm, Balanced Armature Drivers e struttura in alluminio', '119,90'),
('018', 'Asus Cerberus Arctic Stereo Gaming Headset - Bianco', 'gaming headset da Asus ad alta qualità audio con driver da 60mm e sistema di cancellazione del rumore', '39,90'),
('019', 'Asus Echelon Forest Stereo Gaming Headset', 'gaming headset in versione camouflage ad alta qualità audio da Asus con driver da 50mm e sistema attivo di cancellazione del rumore', '69,90'),
('020', 'Asus ROG Centurion 7.1 Gaming Headset', 'gaming headset serie ROG da Asus con 7.1 canali reali, driver da 40mm e sistema attivo di cancellazione del rumore ambientale', '239,90'),
('021', 'Corsair Gaming VOID PRO RGB Wireless Dolby 7.1 - Bianco', 'headset wireless con audio Dolby 7.1, illuminazione RGB, driver 50mm e earpads in schiuma a memoria di forma da Corsair Gaming', '119,90'),
('022', 'Razer Destiny 2 Man War Tournament Edition', 'cuffie high end da Razer con altissima qualità audio, microfono a scomparsa in edizione speciale Destiny 2', '129,90');






