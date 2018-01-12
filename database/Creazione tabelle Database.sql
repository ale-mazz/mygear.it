-- Creazione database 'returnfa_mygear' appartenente al sito mygear.it, sviluppato per il progetto di Tecnologie Web anno 17/18 Università degli studi di Padova
-- A cura di Tiziano Rizzo e Alessandro Mazzon

CREATE DATABASE IF NOT EXISTS returnfa_mygear;

-- Struttura delle tabelle dei vari prodotti

DROP TABLE IF EXISTS cuffie;
CREATE TABLE cuffie (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS alimentatori;
CREATE TABLE alimentatori (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS cpu;
CREATE TABLE cpu (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS memorie_interne;
CREATE TABLE memorie_interne (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS memorie_ram;
CREATE TABLE memorie_ram (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS monitor;
CREATE TABLE monitor (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS mouse_tastiere;
CREATE TABLE mouse_tastiere (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS raffreddamento;
CREATE TABLE raffreddamento (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_audio;
CREATE TABLE schede_audio (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_madri;
CREATE TABLE schede_madri (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_video;
CREATE TABLE schede_video (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS case_pc;
CREATE TABLE case_pc (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome`            char(100)    NOT NULL,
	`Descrizione`     varchar(500) NOT NULL,
	`Prezzo`          float(8,2)   NOT NULL,
	`Img`             char(70)     NOT NULL,
	`Disponibilita`   char(20)     NOT NULL,
	`Alt`             char(20)     NOT NULL
) ENGINE=InnoDB;

-- Inserimento dei prodotti nel database


INSERT INTO alimentatori (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('001', '<span lang="en">Series</span> CX430', 'Marca: <span lang="en">Corsair</span><br>Watt: 430<br>Certificazione: 80Plus', '56,90', 'imagemagic.jpg', 'Disponibile', 'Alimentatore <span lang="en">Corsair</span>'),
('002', '<span lang="en">Series</span> CX450M', 'Marca: <span lang="en">Corsair</span><br>Watt: 450<br>Certificazione: 80Plus', '59,90', 'imagemagic(1).jpg', 'Disponibile', 'Alimentatore <span lang="en">Corsair</span>'),
('003', 'MaxPro 80Plus', 'Marca: <span lang="en">Enermax</span><br>Watt: 600<br>Certificazione: 80Plus', '59,90', 'imagemagic2.jpg', 'Disponibile', 'Alimentatore Enermax'),
('004', 'SF450', 'Marca: <span lang="en">Corsair</span><br>Watt: 450<br>Certificazione: 80Plus Gold', '89,90', 'imagemagic3.jpg', 'Disponibile', 'Alimentatore <span lang="en">Corsair</span> 450'),
('005', 'SST-GM500-G', 'Marca: <span lang="en">Silverstone</span><br>Watt: 500<br>Certificazione: 80Plus Gold', '599,90', 'imagemagic4.jpg', 'Disponibile', 'Alimentatore <span lang="en">Silverstone</span>'),
('006', '<span lang="en">Atlantis</span> 500W', 'Marca: <span lang="en">Atlantis</span><br>Watt: 500<br>Certificazione: No', '43,90', 'alimentatore_atlantis_500w.jpg', 'Non Disponibile', 'Alimentatore <span lang="en">Atlantis</span>'),
('007', '<span lang="en">Corsair</span> 620 W', 'Marca: <span lang="en">Corsair</span><br>Watt: 620<br>Certificazione: No', '33,90', 'alimentatore_corsair_620w.jpg', 'Disponibile', 'Alimentatore <span lang="en">Corsair</span>'),
('008', '<span lang="en">Itek</span> 650W', 'Marca: <span lang="en">Itek</span><br>Watt: 650<br>Certificazione: Silver', '33,90', 'alimentatore_itek.jpg', 'Non Disponibile', 'Alimentatore <span lang="en">Itek</span>'),
('009', '<span lang="en">Maker</span> 1200', 'Marca: <span lang="en">Cooler Master</span><br>Watt: 1200<br>Certificazione: 80Plus Titanium', '1049,90', 'alimentatore_cooler_master_maker_1200.jpg', 'Disponibile', 'Alimentatore <span lang="en">Cooler Master</span>'),
('010', '<span lang="en">Masterwatt Maker</span> 1500', 'Marca: <span lang="en">Cooler Master</span><br>Watt: 1500<br>Certificazione: 80Plus Titanium', '489,90', 'alimentatore_cooler_master_masterwatt.jpg', 'Disponibile', 'Alimentatore <span lang="en">Cooler Master</span>'),
('011', '<span lang="en">Masterwatt Maker</span> 1500 NB', 'Marca: Cooler Master<br>Watt: 1500<br>Certificazione: 80Plus Titanium', '469,90', 'alimentatore_cooler_master.jpg', 'Disponibile', 'Alimentatore <span lang="en">Cooler Master</span>'),
('012', 'Supernova 850', 'Marca: <span lang="en">Evga</span><br>Watt: 850<br>Certificazione: Gold', '425,90', 'alimentatore_evga.jpg', 'Disponibile', 'Alimentatore <span lang="en">Evga</span>');

INSERT INTO cpu (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('013', 'Intel Core i3-6300', 'Marca: Intel<br>Frequenza: 3,8 GHz<br>Socket: 115', '189,90', '1404323_LB_00_FB.EPS_1000.jpg', 'Disponibile', 'Cpu Intel Core i3'),
('014', 'Intel Core i5-6600', 'Marca: Intel<br>Frequenza: 3,3 GHz<br>Socket: 115', '249,90', 'processore-intel-core-i5.jpg', 'Disponibile', 'Cpu Intel Core i5'),
('015', 'Intel Core i7-7700', 'Marca: Intel<br>Frequenza: 3,6 GHz<br>Socket: 117', '349,90', 'CPU_CORE_I7-6700_1151_BOX_4_GHZ_1.jpg', 'Disponibile', 'Cpu Intel Core i7'),
('016', 'Intel Core i7-7700K', 'Marca: Intel<br>Frequenza: 5,1 GHz<br>Socket: 1151', '599,90', '019-753_1g-254x254.jpg', 'Disponibile', 'Cpu Intel Core i7'),
('017', 'Intel Core i7-8700K', 'Marca: Intel<br>Frequenza: 5,4 GHz<br>Socket: 1151', '439,90', 'cpui7.jpg', 'Disponibile', 'Cpu Intel Core i7'),
('018', 'Intel Core i7-8700K Tray', 'Marca: Intel<br>Frequenza: 5,0 GHz<br>Socket: 1155', '529,90', '209079225.jpg', 'Disponibile', 'Cpu Intel Core i7'),
('019', 'Intel I7-4790K', 'Marca: Intel<br>Frequenza: 4,0 GHz<br>Socket: 115', '469,90', 'intel_i7-4790k.jpg', 'Disponibile', 'Cpu Intel Core i7'),
('020', '<span lang="en">Ryzen Threadripper</span> 1950X', 'Marca: Intel<br>Frequenza: 3,4 GHz<br>Socket: TR4', '1239,90', 'ryzen.jpg', 'Disponibile', 'Cpu Ryzen'),
('021', 'Intel Cpu Core i9-7900', 'Marca: Intel<br>Frequenza: 4,5 GHz<br>Socket: 2066', '999,90', 'intel_cpu_core_i9-7900.jpg', 'Disponibile', 'Cpu Intel Core i9'),
('022', 'Intel Cpu Core i7-6800K', 'Marca: Intel<br>Frequenza: 4,2 GHz<br>Socket: 2032', '909,90', '0675901403542_MED.jpg', 'Disponibile', 'Cpu Intel Core i7'),
('023', 'Intel Cpu Core i7-7820', 'Marca: Intel<br>Frequenza: 4,5 GHz<br>Socket: 2066', '969,90', 'intel_cpu_core_i7-7820.jpg', 'Disponibile', 'Cpu Intel Core i7'),
('024', 'AMD CPU <span lang="en">Ryzen</span> 7 1800X', 'Marca: <span lang="en">Ryzen</span><br>Frequenza: 4,0 GHz<br>Socket: AM4', '529,90', 'amd_cpu_ryzen.jpg', 'Disponibile', 'Cpu AMD');

INSERT INTO cuffie (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('025', '<span lang="en">Aorus E1 Headset</span>', 'Marca: <span lang="en">Aorus</span><br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '119,90', 'aoruse1.jpg', 'Non Disponibile', 'Cuffie <span lang="en">Aorus</span>'),
('026', 'Asus <span lang="en">Cerberus Arctic Stereo</span>', 'Marca: Asus<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '39,90', 'asusCerberus.jpg', 'Non Disponibile', 'Cuffie Asus'),
('027', 'Asus <span lang="en">Echelon Forest Stereo</span>', 'Marca: Asus<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '69,90', 'asusEchelon.jpg', 'Disponibile', 'Cuffie Asus'),
('028', 'Asus ROG <span lang="en">Centurion</span> 7.1', 'Marca: Asus<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '239,90', 'asusRog.jpg', 'Non Disponibile', 'Cuffie Asus'),
('029', '<span lang="en">Corsair Gaming VOID PRO</span>', 'Marca: <span lang="en">Corsair</span><br><span lang="en">Wireless</span>: Si<br><span lang="en">Gaming</span>: Si', '119,90', 'voidPro.jpg', 'Non Disponibile', 'Cuffie <span lang="en">Corsair</span>'),
('030', '<span lang="en">Headset Razer Destiny 2</span>', 'Marca: Razer<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '129,90', 'razerDestiny.jpg', 'Disponibile', 'Cuffie <span lang="en">Razer</span>'),
('031', 'H820E <span lang="en">Headset</span> USB', 'Marca: Logitech<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: No', '164,90', 'headset_usb.jpg', 'Disponibile', 'Cuffie Logitech'),
('032', 'Logitech cuffie con microfono', 'Marca: Logitech<br><span lang="en">Wireless</span>: Si<br><span lang="en">Gaming</span>: No', '129,90', 'logitech_cuffie.jpg', 'Disponibile', 'Cuffie Logitech '),
('033', 'H650E <span lang="en">Headset stereo</span> USB', 'Marca: Logitech<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: No', '64,90', 'headset_stereo.jpg', 'Disponibile', 'Cuffie Logitech'),
('034', 'H650E <span lang="en">Headset mono</span> USB', 'Marca: Logitech<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: No', '60,90', 'headset_mono.jpg', 'Disponibile', 'Cuffie Logitech'),
('035', 'Logitech cuffie con microfono', 'Marca: Logitech<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: No', '59,90', 'logitech_cuffie_microfono.jpg', 'Disponibile', 'Cuffie Logitech'),
('036', 'PHILIPS Cuffia DJ', 'Marca: Philips<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '129,90', 'phiips_cuffia.jpg', 'Disponibile', 'Cuffie Philips');

INSERT INTO memorie_interne (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('037', '<span lang="en">Seagate Archive</span> HDD', 'Marca: <span lang="en">Seagate</span><br>Tipologia: HDD<br>Dimensione: 8TB', '299,90', 's-l225.jpg', 'Disponibile', 'Memoria di Massa da 8 Tera Byte'),
('038', '<span lang="en">Seagate</span> Barracuda', 'Marca: <span lang="en">Seagate</span><br>Tipologia: HDD<br>Dimensione: 2TB', '99,90', 'barracuda.jpg', 'Disponibile', 'Memoria di Massa da 8 Tera Byte'),
('039', '<span lang="en">Corsair Force</span> MP500', 'Marca: <span lang="en">Corsair</span><br>Tipologia: SSD<br>Dimensione: 240GB', '169,90', 'corsairForce.jpg', 'Disponibile', 'Memoria Solida da 240 Giga Byte'),
('040', '<span lang="en">orsair Force</span> MP500 NVMe', 'Marca: <span lang="en">Corsair</span><br>Tipologia: SSD<br>Dimensione: 480GB', '279,90', 'corsairForce480gb.jpg', 'Disponibile', 'Memoria Solida da 480 Giga Byte'),
('041', '<span lang="en">Corsair Force Series</span> LE SATA', 'Marca: <span lang="en">Corsair</span><br>Tipologia: SSD<br>Dimensione: 960GB', '419,90', 'corsairForceLE.jpg', 'Disponibile', 'Memoria Solida da 960 Giga Byte'),
('042', '<span lang="en">Corsair Neutron</span>', 'Marca: <span lang="en">Corsair</span><br>Tipologia: SSD<br>Dimensione: 1.920GB', '899,90', 'corsairNeutron.jpg', 'Disponibile', 'Memoria Solida da 1920 Giga Byte'),
('043', 'HARD DISK SATA3 3.5"', 'Marca: Western Digital Red<br>Tipologia: HDD<br>Dimensione: 8TB', '319,90', 'hard_disk_800gb.jpg', 'Disponibile', 'Memoria di Massa da 8 Tera Byte'),
('044', 'HARD DISK SATA3 3.5"', 'Marca: Western Digital Red<br>Tipologia: HDD<br>Dimensione: 8TB', '299,90', 'hard_disk_nas.jpg', 'Disponibile', 'Memoria di Massa da 8 Tera Byte'),
('045', 'HARD DISK SATA3 3.5"', 'Marca: Western Digital Red<br>Tipologia: HDD<br>Dimensione: 6TB', '279,90', 'hard_disk_600gb.jpg', 'Disponibile', 'Memoria di Massa da 6 Tera Byte'),
('046', 'WESTERN DIGITAL HDD', 'Marca: Western Digital Red<br>Tipologia: HDD<br>Dimensione: 6TB', '236,90', 'hard_disk_6tb.jpg', 'Disponibile', 'Memoria di Massa da 6 Tera Byte'),
('047', 'HARD DISK SATA3 3.5"', 'Marca: Western Digital Red<br>Tipologia: HDD<br>Dimensione: 6TB', '209,90', 'hard_disk_sata3.jpg', 'Disponibile', 'Memoria di Massa da 6 Tera Byte'),
('048', 'HARD DISK SATA3 3.5"', 'Marca: Western Digital Red<br>Tipologia: HDD<br>Dimensione: 4TB', '208,90', 'hard_disk_sata4tb.jpg', 'Disponibile', 'Memoria di Massa da 4 Tera Byte');

INSERT INTO memorie_ram (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('049', '<span lang="en">Corsair</span> RGB LED', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 32GB (4x 8GB)<br>Frequenza: 3.33MHz', '499,90', 'ram1.jpg', 'Disponibile', 'Memoria Ram da 32 Giga Byte'),
('050', '<span lang="en">Corsair</span> PC4-26400', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 16GB (2x 8GB)<br>Frequenza: 3.30MHz', '229,90', 'ram2.jpg', 'Disponibile', 'Memoria Ram da 16 Giga Byte'),
('051', '<span lang="en">Corsair</span> PC4-26400', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 32GB (4x 8GB)<br>Frequenza: 3.33MHz', '469,90', 'ram3.jpg', 'Disponibile', 'Memoria Ram da 32 Giga Byte'),
('052', '<span lang="en">Corsair</span> PC4-33000', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 8GB (2x 4GB)<br>Frequenza: 4.133MHz', '189,90', 'ram4.jpg', 'Disponibile', 'Memoria Ram da 8 Giga Byte'),
('053', '<span lang="en">Corsair</span> PC4-33000 Red', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 8GB (2x 4GB)<br>Frequenza: 4.133MHz', '179,90', 'ram5.jpg', 'Disponibile', 'Memoria Ram da 8 Giga Byte'),
('054', '<span lang="en">Corsair</span> PC4-35200', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 16GB (2x 8GB)<br>Frequenza: 4.400MHz', '399,90', 'ram6.jpg', 'Disponibile', 'Memoria Ram da 16 Giga Byte'),
('055', '<span lang="en">Corsair</span> DP', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 32GB (4x 8GB)<br>Frequenza: 2.666MHz', '539,90', 'DDR4_2666mhz.jpg', 'Disponibile', 'Memoria Ram da 32 Giga Byte'),
('056', 'Geil evo x rog', 'Marca: Geil<br>Dimensione: 32GB (4x 8GB)<br>Frequenza: 3.00MHz', '519,90', 'geil_32gb.jpg', 'Disponibile', 'Memoria Ram da 32 Giga Byte'),
('057', '<span lang="en">Corsair</span> LPX', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 32GB (4x 8GB)<br>Frequenza: 2.66MHz', '499,90', 'vemgeance_lpx.jpg', 'Disponibile', 'Memoria Ram da 32 Giga Byte'),
('058', 'XMP HyperX Predator', 'Marca: Hyper<br>Dimensione: 32GB (4x 8GB)<br>Frequenza: 3.00MHz', '489,90', 'hyperx.jpg', 'Disponibile', 'Memoria Ram da 32 Giga Byte'),
('059', 'RAM DDR4 Geil', 'Marca: Geil<br>Dimensione: 32GB (2x 16GB)<br>Frequenza: 2.44MHz', '439,90', 'geil_ram.jpg', 'Disponibile', 'Memoria Ram da 32 Giga Byte'),
('060', '<span lang="en">Corsair</span> DP', 'Marca: <span lang="en">Corsair</span><br>Dimensione: 16GB (1x 16GB)<br>Frequenza: 3.00MHz', '289,90', 'ddr4_3000.jpg', 'Disponibile', 'Memoria Ram da 16 Giga Byte');

INSERT INTO monitor (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('061', 'MG248QR', 'Marca: Asus<br>Dimensione: 24"<br>Risoluzione: 1080p', '349,90', 'AsusMG248.jpg', 'Disponibile', 'Monitor Asus'),
('062', 'Zowie', 'Marca: Benq<br>Dimensione: 27"<br>Risoluzione: 4K', '569,90', 'monitorBenq.jpg', 'Disponibile', 'Monitor Benq'),
('063', '<span lang="en">MSI</span> OptiX', 'Marca: <span lang="en">MSI</span><br>Dimensione: 27"<br>Risoluzione: 1080p', '669,90', '4719072520083_LRG.jpg', 'Disponibile', 'Monitor <span lang="en">MSI</span>'),
('064', '<span lang="en">Gaming</span> TCY', 'Marca: Samsung<br>Dimensione: 31.5"<br>Risoluzione: 4K', '449,90', '8806088693637_MED.jpg', 'Disponibile', 'Monitor Samsung'),
('065', 'ASUS PA328Q', 'Marca: Asus<br>Dimensione: 32"<br>Risoluzione: 4K', '1279,90', 'asusPa.jpg', 'Disponibile', 'Monitor Asus'),
('066', 'ROG Swift', 'Marca: Asus<br>Dimensione: 34"<br>Risoluzione: 4K', '1199,90', 'asusRog.jpg', 'Disponibile', 'Monitor Asus'),
('067', 'ROG Mega', 'Marca: Asus<br>Dimensione: 34"<br>Risoluzione: 4K', '1399,90', 'asus_rog.jpg', 'Disponibile', 'Monitor Asus'),
('068', '<span lang="en">Gaming</span> MXt', 'Marca: Samsung<br>Dimensione: 49"<br>Risoluzione: 2K', '1299,90', 'samsung_gaming.jpg', 'Disponibile', 'Monitor Samsung'),
('069', 'Predator  X34A', 'Marca: Asus<br>Dimensione: 34"<br>Risoluzione: 4K', '1199,90', 'acer_predator.jpg', 'Disponibile', 'Monitor Asus'),
('070', '<span lang="en">Gaming</span> NMX', 'Marca: Samsung<br>Dimensione: 34"<br>Risoluzione: 4K', '999,90', 'samsung_gaming_34.jpg', 'Disponibile', 'Monitor Samsung'),
('071', 'Predator XB-2K', 'Marca: Acer<br>Dimensione: 27"<br>Risoluzione: 4K', '899,90', 'acer_predator_gaming.jpg', 'Disponibile', 'Monitor Acer'),
('072', 'ROG Swift PG278Q', 'Marca: Asus<br>Dimensione: 27"<br>Risoluzione: 4K', '799,00', 'asus_rog_swift.jpg', 'Disponibile', 'Monitor Asus');

INSERT INTO mouse_tastiere (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('073', '<span lang="en">Gaming</span> GXT', 'Marca: <span lang="en">Trust</span><br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '49,90', 'trust_mouse.jpg', 'Disponibile', 'Mouse <span lang="en">Trust</span>'),
('074', 'GLAIVE RGB', 'Marca: <span lang="en">Corsair</span><br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '69,90', 'corsair_mouse.jpg', 'Disponibile', 'Mouse <span lang="en">Corsair</span>'),
('075', 'MasterMouse MM520', 'Marca: Cooler Master<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '69,90', 'coolerMouse.jpg', 'Disponibile', 'Mouse <span lang="en">Cooler Master</span>'),
('076', 'STRAFE RGB', 'Marca: <span lang="en">Trust</span><br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '149,90', 'straffe.jpg', 'Disponibile', 'Mouse <span lang="en">Trust</span>'),
('077', 'Desktop MK710', 'Marca: Logitech<br><span lang="en">Wireless</span>: Si<br><span lang="en">Gaming</span>: Si', '99,90', 'tastiera_mouse.jpg', 'Disponibile', 'Tastiera e Mouse Logitech'),
('078', '<span lang="en">Razer Turret</span>', 'Marca: <span lang="en">Razer</span><br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '179,90', 'razerTurret.jpg', 'Disponibile', 'Tastiera e Mouse <span lang="en">Razer</span>'),
('079', 'ASUS ROG', 'Marca: Asus<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '254,90', 'tastiera_gaming_asus.jpg', 'Disponibile', 'Tastiera Asus'),
('080', 'K95 RGB <span lang="en">BROWN</span>', 'Marca: <span lang="en">Corsair</span><br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '239,90', 'corsair_gaming.jpg', 'Disponibile', 'Tastiera <span lang="en">Corsair</span>'),
('081', 'K70 RGB <span lang="en">RAPIDFIRE</span>', 'Marca: <span lang="en">Corsair</span><br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '229,90', 'corsair_gamingk70.jpg', 'Disponibile', 'Tastiera <span lang="en">Corsair</span>'),
('082', 'ASUS ROG', 'Marca: Asus<br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '179,90', 'mouse_asus_rog.jpg', 'Disponibile', 'Tastiera Asus'),
('083', 'NAGA Epic Chroma', 'Marca: <span lang="en">Razer</span><br><span lang="en">Wireless</span>: No<br><span lang="en">Gaming</span>: Si', '159,90', 'razer_mousenaga.jpg', 'Disponibile', 'Tastiera <span lang="en">Razer</span>'),
('084', '<span lang="en">OUROBOROS</span> USB', 'Marca: <span lang="en">Trust</span><br><span lang="en">Wireless</span>: Si<br><span lang="en">Gaming</span>: Si', '144,90', 'razer_mouse_wireless.jpg', 'Disponibile', 'Tastiera <span lang="en">Trust</span>');

INSERT INTO case_pc (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('085', '<span lang="en">Graphite</span> 780T', 'Marca: <span lang="en">Corsair</span><br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: Si', '189,90', 'Corsair-Graphite.jpg', 'Disponibile', '<span lang="en">Case Corsair</span>'),
('086', '<span lang="en">Crystal</span> 570X RGB', 'Marca: <span lang="en">Corsair</span><br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: Si', '209,90', 'corsairCrystal.jpg', 'Disponibile', '<span lang="en">Case Corsair</span>'),
('087', 'Cosmos C700P', 'Marca: Cooler Master<br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: Si', '289,90', 'collerCosmos.jpg', 'Disponibile', 'Case Cooler Master</span>'),
('088', 'Cosmos II', 'Marca: <span lang="en">Corsair</span><br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: No', '399,90', 'cosmosMaster.jpg', 'Disponibile', '<span lang="en">Case Corsair</span>'),
('089', '<span lang="en">Aerocool</span> P7-C1-BG', 'Marca: <span lang="en">Aerocool</span><br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: Si', '119,90', 'aerocool.jpg', 'Disponibile', '<span lang="en">Case Aerocool</span>o'),
('090', 'Desk HD-DSK-001', 'Marca: Hydra<br>Modello: Desk<br>Vetro Temperato: Si', '1109,90', 'hydra-deskcase.jpg', 'Disponibile', '<span lang="en">Case Hydra</span> con vetro temperato'),
('091', '<span lang="en">Challenger Orange</span>', 'Marca: Cougar<br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: No', '79,90', 'casecougar.jpg', 'Disponibile', '<span lang="en">Case Cougar</span>'),
('092', '<span lang="en">PANZER MAX</span>', 'Marca: Cougar<br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: Si', '129,90', 'casecougarmax.jpg', 'Disponibile', '<span lang="en">Case Cougar</span>'),
('094', '<span lang="en">PANZER</span>', 'Marca: Cougar<br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: Si', '79,90', 'casecougarpanzer.jpg', 'Disponibile', '<span lang="en">Case Cougar</span>'),
('095', '<span lang="en">Maker</span> 5t', 'Marca: <span lang="en">Cooler Master</span><br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: Si', '199,00', 'mastercase.jpg', 'Disponibile', '<span lang="en">Case Cooler Master</span>'),
('096', '<span lang="en">Phantom</span> 820', 'Marca: NZTX<br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: No', '119,90', 'casePhantom.jpg', 'Disponibile', '<span lang="en">Case</span> NZTX'),
('097', 'HAF X', 'Marca: <span lang="en">Cooler Master</span><br>Modello: <span lang="en">Full-Tower</span><br>Vetro Temperato: Si', '209,90', 'hafX.jpg', 'Disponibile', '<span lang="en">Case Cooler Master</span>');


INSERT INTO raffreddamento (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('098', '<span lang="en">Hydro Series</span> H80i v2', 'Marca: <span lang="en">Corsair</span><br>Tipologia: Liquido<br>Dimensione: 120mm', '104,90', 'hydrohigh.jpg', 'Non Disponibile', 'Dissipatore a liquido <span lang="en">Corsair</span>'),
('099', 'LiqTech TR4 240', 'Marca: Enermax<br>Tipologia: Liquido<br>Dimensione: 240mm', '149,90', 'enermax.jpg', 'Non Disponibile', 'Dissipatore a liquido <span lang="en">Enermax</span>'),
('100', 'Floe Riing RGB TT', 'Marca: Thermaltake<br>Tipologia: Liquido<br>Dimensione: 240mm', '169,90', 'Thermaltake.jpg', 'Non Disponibile', 'Dissipatore a liquido <span lang="en">Thermaltake</span>'),
('101', 'NZXT Kraken', 'Marca: NZTX <br>Tipologia: Liquido<br>Dimensione: 120mm', '179,90', 'kraken.jpg', 'Non Disponibile', 'Dissipatore a liquido NZTX'),
('102', '<span lang="en">Airmaker</span>', 'Marca: <span lang="en">Cooler Master</span><br>Tipologia: Aria<br>Dimensione: 140mm', '139,90', 'airmaker.jpg', 'Disponibile', 'Dissipatore ad Aria <span lang="en">Cooler Master</span>'),
('103', '<span lang="en">Masterliquid</span>', 'Marca: <span lang="en">Cooler Master</span><br>Tipologia: Liquido<br>Dimensione: 140mm', '129,90', 'masterliquid.jpg', 'Non Disponibile', 'Dissipatore a liquido <span lang="en">Cooler Master</span>'),
('104', 'Nepton 240M', 'Marca: <span lang="en">Cooler Master</span><br>Tipologia: Liquido<br>Dimensione: 240mm', '158,90', 'nepton.jpg', 'Disponibile', 'Dissipatore a liquido <span lang="en">Cooler Master</span>'),
('105', 'V8 GTS', 'Marca: Cooler Mster<br>Tipologia: Aria<br>Dimensione: 120mm', '119,90', 'v8.jpg', 'Disponibile', 'Dissipatore ad Aria <span lang="en">Cooler Master</span> 120mm'),
('106', '<span lang="en">Silent Liquid</span>', 'Marca: <span lang="en">Thermaltak</span><br>Tipologia: Liquido<br>Dimensione: 120mm', '109,90', 'thermaltak.jpg', 'Disponibile', 'Dissipatore a liquido <span lang="en">Thermaltak</span>'),
('107', 'H1200 PRO', 'Marca: <span lang="en">Antec</span><br>Tipologia: Liquido<br>Dimensione: 120mm', '111,90', 'antec.jpg', 'Disponibile', 'Dissipatore a liquido <span lang="en">Antec</span>'),
('108', '<span lang="en">ICERED</span> 240', 'Marca: <span lang="en">Itek</span><br>Tipologia: Liquido<br>Dimensione: 240mm', '129,90', 'icered.jpg', 'Disponibile', 'Dissipatore a liquido <span lang="en">Itek</span>'),
('109', '<span lang="en">LIQUY</span> R2 240', 'Marca: <span lang="en">Itek</span><br>Tipologia: Liquido<br>Dimensione: 240mm', '151,90', 'liquy.jpg', 'Disponibile', 'Dissipatore a liquido <span lang="en">Itek</span>');


INSERT INTO schede_audio (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('110', '<span lang="en">Xonar</span> DX/XD/A', 'Marca: Asus<br>Tipologia: Interna', '59,90', 'xonar.jpg', 'Disponibile', 'Scheda Audio Asus'),
('111', '<span lang="en">Xonar</span> U3', 'Marca: Asus<br>Tipologia: Esterna', '39,90', 'xonarusb.jpg', 'Disponibile', 'Scheda Audio Asus'),
('112', 'Strix Raid Pro 7.1', 'Marca: Asus<br>Tipologia: Interna', '119,90', 'raidpro.jpg', 'Disponibile', 'Scheda Audio Asus'),
('113', '<span lang="en">Xonar Phoebus</span>', 'Marca: Asus<br>Tipologia: Interna', '159,90', 'rog.jpg', 'Disponibile', 'Scheda Audio Asus'),
('114', '<span lang="en">Xonar Essence</span> STX III', 'Marca: Asus<br>Tipologia: Interna', '249,90', 'xonaressence.jpg', 'Disponibile', 'Scheda Audio Asus'),
('115', '<span lang="en">Xonar Essence</span> STU', 'Marca: Asus<br>Tipologia: Esterna', '319,90', 'xonaresterna.jpg', 'Disponibile', 'Scheda Audio Asus'),
('116', '<span lang="en">Xonar Essence</span> STX II', 'Marca: Asus<br>Tipologia: Interna', '299,90', 'stx.jpg', 'Disponibile', 'Scheda Audio Asus'),
('117', '<span lang="en">Xonar Essence</span> STZ II', 'Marca: Asus<br>Tipologia: Interna', '249,90', 'stx2.jpg', 'Disponibile', 'Scheda Audio Asus'),
('118', 'Strix Raid Dl', 'Marca: Asus<br>Tipologia: Interna', '229,90', 'raidDlx.jpg', 'Disponibile', 'Scheda Audio Asus'),
('119', '<span lang="en">Xonar</span> D2/PM/A', 'Marca: Asus<br>Tipologia: Interna', '189,90', 'd2xonara.jpg', 'Disponibile', 'Scheda Audio Asus'),
('120', 'Strix Raid Pro', 'Marca: Asus<br>Tipologia: Interna', '159,90', 'asus6.jpg', 'Disponibile', 'Scheda Audio Asus'),
('121', '<span lang="en">Xonar Phoebus</span> Sol', 'Marca: Asus<br>Tipologia: Interna', '139,90', '4716659447740_MED.jpg', 'Disponibile', 'Scheda Audio Asus');

INSERT INTO schede_madri (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('122', 'Prime X399-A', 'Marca: Asus<br>Modello: X399<br>Socket: TR4 ', '359,90', 'asusPrime.jpg', 'Disponibile', 'Scheda Madre Asus'),
('123', 'X399-<span lang="en">Gaming</span>', 'Marca: Aorus<br>Modello: X399<br>Socket: TR4', '399,90', 'aorusx399.jpg', 'Disponibile', 'Scheda Madre Aorus'),
('124', 'ROG <span lang="en">Zenith Extreme</span>', 'Marca: Asus<br>Modello: X399<br>Socket: TR4', '589,90', 'asusRog.jpg', 'Disponibile', 'Scheda Madre Asus'),
('125', 'X299-Ultra <span lang="en">Gaming</span>', 'Marca: Asus<br>Modello: X299<br>Socket: 2066', '309,90', 'aorusx299.jpg', 'Disponibile', 'Scheda Madre Asus'),
('126', '<span lang="en">PRIME X299-DELUXE</span>', 'Marca: Aorus<br>Modello: X299<br>Socket: 2066', '479,90', 'primesteam.jpg', 'Disponibile', 'Scheda Madre Aorus'),
('127', 'ROG <span lang="en">Rampage VI EXTREME</span>', 'Marca: Asus<br>Modello: X299<br>Socket: 2066', '699,90', 'rampage.jpg', 'Disponibile', 'Scheda Madre Asus'),
('128', '<span lang="en">MAXIMUS IX EXTREME</span>', 'Marca: Asus<br>Modello: Z270<br>Socket: 1151', '679,90', 'maximus.jpg', 'Disponibile', 'Scheda Madre Asus'),
('129', '<span lang="en">RAMPAGE V EDITION 10</span>', 'Marca: Asus<br>Modello: X99<br>Socket: 2011', '559,90', 'rampageV.jpg', 'Disponibili', 'Scheda Madre Asus'),
('130', '<span lang="en">PRIME DELUXE</span>', 'Marca: Asus<br>Modello: X299<br>Socket: 2066', '519,90', '4712900763881_MED.jpg', 'Disponibile', 'Scheda Madre Asus'),
('131', '<span lang="en">XPOWER GAMING</span>', 'Marca: <span lang="en">MSI</span><br>Modello: X299<br>Socket: 2066', '489,90', '4719072525958_MED.jpg', 'Disponibile', 'Scheda Madre <span lang="en">MSI</span>'),
('132', '<span lang="en">DELUXE 2</span>', 'Marca: Asus<br>Modello: X99<br>Socket: 2011', '479,90', '4712900397796_MED.jpg', 'Disponibile', 'Scheda Madre Asus X99'),
('133', '<span lang="en">Gaming</span> M7 ACK', 'Marca: <span lang="en">MSI</span><br>Modello: X299<br>Socket: 2066', '469,90', '4719072525941_MED.jpg', 'Disponibile', 'Scheda Madre <span lang="en">MSI</span>');

INSERT INTO schede_video (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`, `Alt`)
VALUES ('134', 'RX Vega 56', 'Marca: Gigabyte<br>Memoria: 8GB<br>Tecnologia: AMD', '599,90', 'radeonRX.jpg', 'Disponibile', 'Scheda Video AMD'),
('135', 'RX Vega 64 Silver', 'Marca: Gigabyte<br>Memoria: 8GB<br>Tecnologia: AMD', '729,90', 'radeonVega.jpg', 'Disponibile', 'Scheda Video AMD'),
('136', 'GTX 1080 Ti', 'Marca: <span lang="en">MSI</span><br>Memoria: 11GB<br>Tecnologia: Nvidia', '969,90', 'gtxti.jpg', 'Disponibile', 'Scheda Video Nvidia'),
('137', 'GTX 1080 Ti <span lang="en">Platinum Edition</span>', 'Marca: Asus<br>Memoria: 11GB<br>Tecnologia: Nvidia', '999,90', 'poseidon.jpg', 'Disponibile', 'Scheda Video Nvidiae'),
('138', 'GTX <span lang="en">Titan</span> X', 'Marca: ///<br>Memoria: 12GB<br>Tecnologia: Nvidia', '1349,90', 'titanX.jpg', 'Disponibile', 'Scheda Video Nvidia'),
('139', 'Quadro M6000', 'Marca: Asus<br>Memoria: 24GB<br>Tecnologia: Nvidia', '9660,90', 'quadrom6.jpg', 'Disponibile', 'Scheda Video Nvidia'),
('140', 'GTX 1080Ti Poseidon', 'Marca: Asus<br>Memoria: 11GB<br>Tecnologia: Nvidia', '1029,90', '4712900748284_MED.jpg', 'Disponibile', 'Scheda Video Nvidia'),
('141', 'GTX 1080Ti', 'Marca: <span lang="en">MSI</span><br>Memoria: 11GB<br>Tecnologia: Nvidia', '959,90', '4719072517878_MED.jpg', 'Disponibile', 'Scheda Video Nvidia'),
('142', 'GTX 1080 Ti', 'Marca: <span lang="en">Evga</span><br>Memoria: 11GB<br>Tecnologia: Nvidia', '729,90', '0843368048204_MED.jpg', 'Disponibile', 'Scheda Video Nvidia'),
('143', 'GTX 1080Ti ROG', 'Marca: Asus<br>Memoria: 11GB<br>Tecnologia: Nvidia', '929,90', '4712900714555_MED.jpg', 'Disponibile', 'Scheda Video Nvidia'),
('144', 'GTX 1080Ti', 'Marca: Zotac<br>Memoria: 11GB<br>Tecnologia: Nvidia', '909,90', '4895173613081_MED.jpg', 'Disponibile', 'Scheda Video Nvidia'),
('145', 'GTX 1080 <span lang="en">Founders</span>', 'Marca: <span lang="en">MSI</span><br>Memoria: 8GB<br>Tecnologia: Nvidia', '889,90', '4719072465315_MED.jpg', 'Disponibile', 'Scheda Video Nvidia');

-- Struttura della tabella `users`
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
	`user_id`            INT(11)                              NOT NULL
	COMMENT 'auto incrementing user_id of each user, unique index',
	`user_name`          VARCHAR(64) COLLATE utf8_unicode_ci  NOT NULL
	COMMENT 'user''s name',
	`user_username`      VARCHAR(64) COLLATE utf8_unicode_ci  NOT NULL
	COMMENT 'user''s username, unique',
	`user_password_hash` VARCHAR(255) COLLATE utf8_unicode_ci NOT NULL
	COMMENT 'user''s password in salted and hashed format',
	`user_email`         VARCHAR(64) COLLATE utf8_unicode_ci  NOT NULL
	COMMENT 'user''s email, unique'
)
	ENGINE = InnoDB
	DEFAULT CHARSET = utf8
	COLLATE = utf8_unicode_ci
	COMMENT ='user data';

-- Indici per le tabelle `users`

ALTER TABLE `users`
	ADD PRIMARY KEY (`user_id`),
	ADD UNIQUE KEY `user_name` (`user_name`),
	ADD UNIQUE KEY `user_email` (`user_email`);

-- AUTO_INCREMENT per la tabella `users`

ALTER TABLE `users`
	MODIFY `user_id` INT(11) NOT NULL AUTO_INCREMENT
	COMMENT 'auto incrementing user_id of each user, unique index',
	AUTO_INCREMENT = 0;
COMMIT;
