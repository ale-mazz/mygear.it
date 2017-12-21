CREATE DATABASE IF NOT EXISTS mygear;

DROP TABLE IF EXISTS cuffie;
CREATE TABLE cuffie (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(100) NOT NULL,
	`Descrizione` char(200)  NOT NULL,
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
	`Nome` char(50) NOT NULL,
	`Descrizione` char(150)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
	`Img` char(20) NOT NULL,
	`Disponibilita` char(20) NOT NULL
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

DROP TABLE IF EXISTS case_pc;
CREATE TABLE case_pc (
  `Codice_prodotto` int PRIMARY KEY,
  `Nome` char(20) NOT NULL,
  `Descrizione` char(50)  NOT NULL,
  `Prezzo` float(8,2)  NOT NULL
) ENGINE=InnoDB;



INSERT INTO alimentatori (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('001', 'Cooler Master MasterWatt 65', 'Alimentatore Notebook - 65 Watt', '34,90', 'alimentatori.jpg', 'Disponibile'),
('002', 'Cooler Master MasterWatt 70', 'Alimentatore Notebook - 70 Watt', '39,90', 'alimentatori.jpg', 'Disponibile'),
('003', 'Cooler Master MasterWatt 90', 'Alimentatore Notebook - 90 Watt', '44,90','alimentatori.jpg', 'Disponibile'),
('004', 'TECNOWARE FREE SILENT 520 W', 'Alimentatore Interno Per Personal Computer 520 W', '24,90', 'alimentatori.jpg', 'Disponibile'),
('005', 'HAMLET ALIMENTATORE NOTEBOOK 90W XPWNB90C', 'Alimentatore Universale Compatto, Per Computer Portatili)', '34,90', 'alimentatori.jpg', 'Disponibile'),
('006', 'ISY ALIMENTATORE NOTEBOOK 19V', 'Alimentatore notebook 19V/90W', '42,90', 'alimentatori.jpg', 'Non Disponibile');

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

INSERT INTO memorie_interne (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Seagate Archive HDD, SATA 6G, 5.900RPM, 3,5 Pollici - 8 TB', 'efficiente e veloce disco da 3.5 con capacità 8Tb da Seagate con 128Mb di cache e connessione SATA 6G', '299,90'),
('018', 'Seagate Barracuda, SATA 6G, 7200RPM, 3,5 Pollici - 3 TB', 'efficiente e veloce disco da 3.5 con capacità 3Tb da Seagate con 64Mb di cache e connessione SATA 6G', '99,90'),
('019', 'Corsair Force MP500 NVMe SSD, PCIe 3.0 M.2 Type 2280 - 240 GB', 'performance fuori scala da Corsair per questo SSD in formato M.2 con 3.000 MB/s in lettura e 2.400 MB/s in scrittura', '169,90'),
('020', 'Corsair Force MP500 NVMe SSD, PCIe 3.0 M.2 Type 2280 - 480 GB', 'performance fuori scala da Corsair per questo SSD in formato M.2 con 3.000 MB/s in lettura e 2.400 MB/s in scrittura', '279,90'),
('021', 'Corsair Force Series LE SATA III SSD 2.5 - 960GB', 'performante SSD da Corsair con max. 560 / 540 MB/s Lettura/Scrittura e 3 anni di garanzia', '419,90'),
('022', 'Corsair Neutron XTi SATA III SSD 2.5 - 1.920GB', 'SSD Corsair Neutron XTi con controller Quad-Core e max. 560 / 540 MB/s Lettura/Scrittura e 100K IOPS (4k aligned)', '899,90');

INSERT INTO memorie_ram (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Corsair Vengeance RGB LED DDR4, 3.333 MHz, C16 - Kit 32GB (4x 8GB)', 'memorie 1,35V a 3.333MHz da Corsair serie Vengeance LED con illuminazione RGB programmabile', '499,90'),
('018', 'Corsair Vengeance LPX DDR4 PC4-26400, 3.300 MHz, C16, Nero - Kit 16GB (2x 8GB)', 'memorie 1,35V a 3.300MHz da Corsair serie Vengeance LPX con timing CL 16-18-18-36 e dissipatore Vengeance Airflow', '229,90'),
('019', 'Corsair Dominator Platinum DDR4 PC4-26400, 3.333 MHz, C16 - Kit 32GB (4x 8GB)', 'memorie 1,35V a 3.333MHz da Corsair serie Dominator Platinum con timing CL 16-18-18-36 con Airflow Platinum Dominator', '469,90'),
('020', 'Corsair Vengeance LPX DDR4 PC4-33000, 4.133 MHz, C19, Nero - Kit 8GB (2x 4GB)', 'memorie 1,35V a 4.133MHz da Corsair serie Vengeance LPX con timing CL 19-25-25-45 e dissipatore Corsair Vengeance Airflow', '189,90'),
('021', 'Corsair Vengeance LPX DDR4 PC4-33000, 4.133 MHz, C19, Rosso - Kit 8GB (2x 4GB)', 'memorie 1,35V a 4.133MHz da Corsair serie Vengeance LPX con timing CL 19-25-25-45 e dissipatore Corsair Vengeance Airflow', '179,90'),
('022', 'Corsair Vengeance LPX DDR4 PC4-35200, 4.400 MHz, C19, Rosso - Kit 16GB (2x 8GB)', 'memorie 1,4V a 4.400MHz da Corsair serie Vengeance LPX con timing CL 19-23-23-45 e dissipatore Corsair Vengeance Airflow', '399,90');

INSERT INTO monitor (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Asus MG248QR, 60,96 cm (24 pollici), FreeSync, 144 Hz, TN - DP, HDMI', 'monitor Full HD con pannello TN da Asus con tempo di risposta 1 ms, 144hz di refresh e tecnologia ASUS Ultra Low Blue Light', '349,90'),
('018', 'Asus MG278Q, 68,58 cm (27 pollici), 144Hz Widescreen, FreeSync - DP', 'monitor 27 pollici da Asus con tempo di risposta 4 ms, AMD Adaptive Sync, 144 Hz e pannello TN', '569,90'),
('019', 'Asus MG279Q, 68,58 cm (27 pollici), 144Hz Widescreen, FreeSync - DP', 'monitor 27 pollici da Asus con tempo di risposta 4 ms, AMD Adaptive Sync, 144 Hz e pannello IPS', '669,90'),
('020', 'Asus MX27AQ, 68,58 cm (27 pollici) Widescreen - DP, HDMI', 'monitor 27 pollici ultra flat da ASUS con risoluzione WQHD 2.560 x 1.440 pixel, tecnologia AH-IPS e speaker da 3W', '449,90'),
('021', 'ASUS PA328Q, 81,28 cm (32 pollici), 4K/UHD Widescreen - DP, HDMI', 'monitor Ultra-HD 32 pollici professionale da ASUS con pannello IPS 10-Bit, 100% sRGB, Displayport & HDMI 2.0', '1279,90'),
('022', 'Asus ROG Swift PG348Q, 86,7 cm (34 Pollici) G-SYNC Widescreen - DP, HDMI', 'monitor UWHD con tecnologia G-SYNC da Asus con tempo di risposta 4 ms, 100hz refresh & pannello IPS da 34 pollici', '1199,90');

INSERT INTO mouse_tastiere (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Trust Gaming GXT 155 Gaming Mouse - Nero', 'mouse da gioco Elite, con pesi integrati personalizzabili e memoria interna per profili programmabili', '49,90'),
('018', 'Corsair Gaming GLAIVE RGB Gaming Mouse, 16000 DPI - Alluminio', 'mouse gaming da Corsair con sensore laser da 16.000 DPI, struttura in alluminio e componenti intercambiabili', '69,90'),
('019', 'Cooler Master MasterMouse MM520, 12000 DPI, RGB, Claw Grip', 'mouse pro gaming da Cooler Master con 7 tasti, sensore ottico da 12.000 DPI, 512 KB memoria integrata ed illuminazione RGB', '69,90'),
('020', 'Corsair Gaming STRAFE RGB, Cherry MX Silent - Layout ITA', 'tastiera meccanica pro gamer da Corsair con kit tasti antiscivolo, retroilluminazione RGB e switch Cherry MX Silent', '149,90'),
('021', 'Logitech Wireless Desktop MK710', 'bundle con tastiera e mouse Logitech, tecnologia Wireless e alta qualità per durare nel tempo', '99,90'),
('022', 'Razer Turret - Layout US', 'bundle Razer con mouse Gaming e LapBoard da divano', '179,90');

INSERT INTO case_pc (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Corsair Graphite 780T - Nero', 'nuovo connubio di design e funzionalità da Corsair con nuovi elementi della serie Graphite in versione Full Tower', '189,90'),
('018', 'Corsair Crystal 570X RGB in Vetro Temperato - Rosso con Finestra', 'case gamer da Corsair con 7 slot PCI, supporto per radiatori da 360/240mm, finestra in vetro temprato e ventole RGB', '209,90'),
('019', 'Cooler Master Cosmos C700P, TG - Nero/Argento con Finestra', 'edizione rinnovata della serie Cosmos da Cooler Master con design sportivo, paratie in vetro temperato ed illuminazione RGB', '289,90'),
('020', 'Cooler Master Cosmos II RC-1200-KKN1 - Nero', 'nuovo Cosmos II da Cooler Master con design sportivo, ottimizzazione dei flussi d''aria interni e pannello di controllo avanzato', '399,90'),
('021', 'Aerocool P7-C1-BG - Nero con Finestra in Vetro Temperato', 'case con design esagonale da Aerocool con illuminazione personalizzabile e finestra laterale in vetro temperato', '119,90'),
('022', 'Hydra Desk HD-DSK-001 Desk Case - Nero', 'ultimate desktop per pro gamers da Hydra 100% alluminio con amplia espandibilità e predisposizione per liquido, 100% made in Italy', '1109,90');


INSERT INTO raffreddamento (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Corsair Hydro Series H80i v2 Extreme Performance Liquid CPU Cooler', 'sistema a liquido da Corsair a circuito chiuso con radiatore da 120mm e doppia ventola SP120L PWM ad alta silenziosità', '104,90'),
('018', 'Enermax LiqTech TR4 240 Watercooling AIO - 240 mm', 'sistema a liquido da Enermax a circuito chiuso con radiatore da 240mm e doppia ventola PWM per processori AMD TR4 ThreadRipper', '149,90'),
('019', 'Thermaltake Floe Riing RGB TT Premium Edition AIO - 240mm', 'dissipatore AIO da Thermaltake con ventole RGB e radiatore da 240mm', '169,90'),
('020', 'Cooler Master MasterFan Pro 140 Air Flow RGB - 140 mm', 'ventola LED RGB compatibile con varie tecnologie tra cui ASUS Aura, Gigabyte RGB Fusion, 500-800 RPM, 53 CFM, 0.54 mmH2O', '29,90'),
('021', 'Aerocool Lighting ventola 140mm - Blu', 'ventola con 11 pale trasperenti e LED luminosi da Aerocool', '19,90'),
('022', 'Aerocool Lighting ventola 140mm - Rosso', 'ventola con 11 pale trasperenti e LED luminosi da Aerocool', '79,90');


INSERT INTO schede_audio (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Asus Xonar DX/XD/A PCIe', 'Scheda Audio per slot PCIe 7.1 con Tecnologia Dolby Home Theater', '59,90'),
('018', 'ASUS Xonar U3 Scheda Audio Hi-Speed USB', 'scheda audio USB da ASUS serie Xonar con amplificatore per headset e DAC', '39,90'),
('019', 'Asus Strix RAID Pro 7.1 Gaming Audio Card PCIe', 'scheda audio pro gaming PCIe da Asus con DAC ESS SABRE9006A, amplificatore cuffie da 600Ohm e software di gestione', '119,90'),
('020', 'Asus Xonar ROG Phoebus - PCIe', 'scheda audio ROG per gamer, con box di controllo, amplificatore per headset e XEAR 3D', '159,90'),
('021', 'Asus Xonar Essence STX II 7.1 Scheda Audio PCIe x1', 'scheda audio semi professionale da Asus con 124 dB SNR, Audio discreto 7.1 ed amplificatore per HeadSet', '249,90'),
('022', 'Asus Xonar Essence STU, Hi-Speed USB', 'convertitore USB DAC da Asus con rapporto segnale / rumore di 120 dB e amplificatore (TPA6120A2) da 600 ohm', '319,90');

INSERT INTO schede_madri (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'ASUS PRIME X399-A, AMD X399 Motherboard - Socket TR4', 'mobo X399 ATX con 4x PCIe x16 (x16/x16/x8/x8), 3x USB 3.1 (2× Type A & 1x Type C), 2x M.2 (PCIe 3.0 x4/SATA) & 6x SATA 6G, 12x USB 3.0 / 4x USB 2.0 & Illuminazione RGB', '359,90'),
('018', 'Gigabyte Aorus X399 Gaming 7, AMD X399 MOtherboard - Socket TR4', 'mobo X399 ATX con 5x PCIe x16 (x16/x16/x8/x8/4), 2x USB 3.1 (1× Type A & 1x Type C), 3x M.2 (PCIe 3.0 x4/SATA) & 8x SATA 6G, 10x USB 3.0 / 4x USB 2.0 & Illuminazione RGB', '399,90'),
('019', 'ASUS ROG Zenith Extreme, AMD X399 Motherboard - Socket TR4', 'mobo X399 ATX con 4x PCIe x16 (x16/x16/x8/x8), 2x USB 3.1 (1× Type A & 1x Type C), 3x M.2 (PCIe 3.0 x4/SATA) & 6x SATA 6G, 12x USB 3.0 / 4x USB 2.0, Illuminazione RGB & AC-WLAN / 10 Gigabit
', '589,90'),
('020', 'Gigabyte Aorus X299-Ultra Gaming, Intel X299 Mainboard - Socket 2066', 'scheda madre X299 da Gigabyte con 5× PCIe 3.0 x16 (2× x16 / 1× x8 / 2× x4) 7× USB 3.1 / 8× USB 3.0, 3× M.2 (PCIe 3.0 x4) & 8x SATA 6G, Gigabyte RGB Fusion LED', '309,90'),
('021', 'Asus PRIME X299-DELUXE + Steam Gift Card 50€', 'scheda madre X299 da Asus in bundle con Steam Gift Card da 50€', '479,90'),
('022', 'Asus ROG Rampage VI EXTREME, Intel X299 Mainboard - Socket 2066', 'scheda madre X299 da Asus con 4× PCIe 3.0 x16, 3× USB 3.1 / 12× USB 3.0 / 2× USB 2.0, 3× M.2 (PCIe 3.0 x4) & 1× U.2 & 6x SATA 6G, illuminazione Asus AURA RGB & WiFi / 10Gb-LAN', '699,90');

INSERT INTO schede_video (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`)
VALUES ('017', 'Gigabyte Radeon RX Vega 56 8G, 8192 MB HBM2', 'Radeon RX Vega con 1.471 MHz Core, 8 Gb di Memoria HBM2 & 3x DisplayPort 1.4 / 1x HDMI', '599,90'),
('018', 'Gigabyte Radeon RX Vega 64 Silver 8G, 8192 MB HBM2', 'Radeon RX Vega con 1.546 MHz Core, 8 Gb di Memoria HBM2 & 3x DisplayPort 1.4 / 1x HDMI', '729,90'),
('019', 'Asus GeForce GTX 1080 Ti STRIX O11G Gaming, 11GB GDDR5X', 'Pascal Power da ASUS: GTX 1080 Ti con 1.683 / 1.708 MHz Core, 11Gb di Memoria (11.100 MHz) e Aura Sync RGB, VR & 4K gaming', '969,90'),
('020', 'Asus ROG Poseidon GeForce GTX 1080 TI 11GB Platinum Edition', 'Pascal Power da ASUS con diussipazione a liquido integrata! GTX 1080 Ti con 1.733 MHz Core, 11GB MB di Memoria (11.1100 MHz) e dissipazione con WB integrato', '999,90'),
('021', 'VGA 12GB PALIT GeForce GTX Titan X (DVI-I,Mini-HDMI,3xDP,DDR5,A)', 'NVIDIA TITAN X, con architettura NVIDIA Pascal™, è la scheda grafica ideale. Questa rivoluzionaria versione della scheda TITAN X offre a qualsiasi utente la potenza necessaria a realizzare cose in precedenza ritenute impossibili', '1349,90'),
('022', 'Scheda grafica NVIDIA Quadro M6000 24 GB', 'Creativi, stilisti e designer potranno affrontare carichi di lavoro estremamente elevati di visualizzazione, simulazione ed analisi con l''efficiente NVIDIA® Quadro® M6000 ad alte prestazioni e i suoi straordinari 24 GB di memoria GDDR5 ad elevata larghezza di banda', '9660,90');
