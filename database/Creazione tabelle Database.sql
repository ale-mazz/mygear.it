CREATE DATABASE IF NOT EXISTS mygear;

DROP TABLE IF EXISTS cuffie;
CREATE TABLE cuffie (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(100) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL   
) ENGINE=InnoDB;

DROP TABLE IF EXISTS PC;
CREATE TABLE PC (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS alimentatori;
CREATE TABLE alimentatori (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(50) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
	`Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS CPU;
CREATE TABLE CPU (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS memorie_interne;
CREATE TABLE memorie_interne (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS memorie_ram;
CREATE TABLE memorie_ram (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS monitor;
CREATE TABLE monitor (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS mouse_tastiere;
CREATE TABLE mouse_tastiere (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS raffreddamento;
CREATE TABLE raffreddamento (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_audio;
CREATE TABLE schede_audio (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_madri;
CREATE TABLE schede_madri (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS schede_video;
CREATE TABLE schede_video (
	`Codice_prodotto` int PRIMARY KEY,
	`Nome` char(20) NOT NULL,
	`Descrizione` varchar(500)  NOT NULL,
	`Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
	`Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;

DROP TABLE IF EXISTS case_pc;
CREATE TABLE case_pc (
    `Codice_prodotto` int PRIMARY KEY,
    `Nome` char(20) NOT NULL,
    `Descrizione` varchar(500)  NOT NULL,
    `Prezzo` float(8,2)  NOT NULL,
    `Img` char(70) NOT NULL,
    `Disponibilita` char(20) NOT NULL,
    `Alt` char(20) NOT NULL
) ENGINE=InnoDB;



INSERT INTO alimentatori (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('001', 'Corsair Builder Series CX430 PSU - 430 Watt', 'PSU da 430 Watt della Corsair, Alta Efficienza e 28A sui 12V', '56,90', 'imagemagic.jpg', 'Disponibile'),
('002', 'Corsair Builder Series CX450M PSU Modulare - 450 Watt', 'Alimentatore entry level da Corsair con alta efficienza e cablaggio dei cavi modulare', '59,90', 'imagemagic(1).jpg', 'Disponibile'),
('003', 'Enermax MaxPro 80Plus - 500 Watt', 'PSU entry level da Enermax con certificazione 80Plus e ventola silenziosa da 12cm', '59,90','imagemagic2.jpg', 'Disponibile'),
('004', 'Corsair SF450 80PLUS Gold High Performance SFX - 450 Watt', 'Alimentatore SFX Ultra compatto da 450W, singola linea 12V da 37A, 2x PCIe e 7 anni di garanzia', '89,90', 'imagemagic3.jpg', 'Disponibile'),
('005', 'Silverstone SST-GM500-G Gemini Series - 2x 500 Watt', 'Alimentatore ridondante ATX con funzionalità Hot-Swap, 2x 500 Watt, 41A su singolo canale e certificazione 80Plus Gold', '599,90', 'imagemagic4.jpg', 'Disponibile'),
('006', 'Alimentatore Atlantis 500W', 'ATLANTIS P016-MPW-5000-W singola ventola silenziosa 12cm, 2 SATA, 3 ATA, 12V, 24PIN', '43,90', 'alimentatore_atlantis_500w.jpg', 'Non Disponibile'),
('007', 'Alimentatore Corsair 620 W', 'Alimentatore Corsair 620 W TECNOWARE FREE-Silent620 FAL625FS12 Fan12cm Silent v2.01 (Gar24m)', '33,90', 'alimentatore_corsair_620w.jpg', 'Disponibile'),
('008', 'Alimentatore Itek', 'Alimentatore Itek ENERGY K-Series 650W ATX - Full Black, Retail', '33,90', 'alimentatore_itek.jpg', 'Non Disponibile'),
('009', 'Alimentatore Cooler Master Maker 1200', 'Alimentatore Cooler Master Made In Japan, 1200W 80Plus Titanium, Active PFC, Silent 135mm FP fan', '1049,90', 'alimentatore_cooler_master_maker_1200.jpg', 'Disponibile'),
('010', 'Alimentatore Cooler Master MASTERWATT MAKER 1500', 'Alimentatore Cooler Master  1500W 80PLUS-TITANIUM 135MM-FAN ACTIVE-PFC PSU', '489,90', 'alimentatore_cooler_master_masterwatt.jpg', 'Disponibile'),
('011', 'Alimentatore Cooler Master MASTERWATT MAKER 1500 no bluetooth', 'Alimentatore Cooler Master no bluetooth, 1500W 80PLUS-TITANIUM 135MM-FAN ACTIVE-PFC PSU', '469,90', 'alimentatore_cooler_master.jpg', 'Disponibile'),
('012', 'Alimentatore EVGA SUPERNOVA', 'Alimentatore 1600 G2 GOLD', '425,90', 'alimentatore_evga.jpg', 'Disponibile');

INSERT INTO cpu (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('013', 'Intel Core i3-6300 3,8 GHz (Skylake) Socket 115', 'CPU dual core da Intel con 3,8 GHz max, 4Mb Cache, chipset grafico HD 530, 47 Watt TDP con dissipatore', '189,90', '1404323_LB_00_FB.EPS_1000.jpeg', 'Disponibile'),
('014', 'Intel Core i5-6600 3,3 GHz (Skylake) Socket 115', 'Performante CPU Quadcore da Intel con 3,9 GHz max, 6Mb Cache, chipset grafico HD 530, 65 Watt TDP con dissipatore', '249,90', 'processore-intel-core-i5.jpeg', 'Disponibile'),
('015', 'Intel Core i7-7700 3,6 GHz (Kaby Lake) Socket 117', 'Performante CPU Quadcore da Intel serie Kaby-Lake con 4,2 GHz max, 8Mb Cache, chipset grafico HD 630, 65 Watt', '349,90', 'CPU_CORE_I7-6700_1151_BOX_4_GHZ_1.jpeg', 'Disponibile'),
('016', 'Intel Core i7-7700K (Kaby Lake) PreTestato @ 5,1 Ghz - Tray', 'Performante CPU Quadcore da Intel serie Kaby-Lake pretestato e certificato per OC fino a 5,1 GHz', '599,90', '019-753_1g-254x254.jpeg', 'Disponibile'),
('017', 'Intel Core i7-8700K 3,7 GHz (Coffee Lake) Socket 1151 - boxed', 'Performante CPU Intel Hexa-Core serie Cofee Lake con 3,7/4,7 GHz max, 12Mb Cache L3, chipset grafico HD 630, 95 Watt TDP', '439,90', 'cpui7.jpeg', 'Disponibile'),
('018', 'Intel Core i7-8700K (Coffee Lake) PreTestato @ 5,0 Ghz - Tray', 'Performante CPU Hexa-Core da Intel serie Coffee Lake pretestato e certificato per OC fino a 5,0 GHz', '529,90', '209079225.jpeg', 'Disponibile'),
('019', 'Intel I7-4790K', 'CPU Intel I7 4 GHZ 8MB Cache', '469,90', 'intel_i7-4790k.jpg', 'Disponibile'),
('020', 'Ryzen Threadripper 1950X 4.0GHZ', 'CPU AMD Threadripper 1950X, Ryzen. Frequenza del processore: 3,4 GHz, Presa per processore: Socket TR4, Componente per: Server/workstation', '1239,90', 'ryzen.jpg', 'Disponibile'),
('021', 'Intel Cpu Core i9-7900 X-series processor', 'Intel CPU i9 X-series, 10 Core, 20 Threads, box', '999,90', 'intel_cpu_core_i9-7900.jpg', 'Disponibile'),
('022', 'Intel Cpu Core i7-6800K', 'CPU Intel core i7, Frequenza del processore: 3,4 GHz, Numero di core del processore: 6, Presa per processore: LGA 2011-v3', '909,90', '0675901403542_MED.jpeg', 'Disponibile'),
('023', 'Intel Cpu Core i7-7820 X-series processor', 'Intel Cpu Core i7, 8 Core, 16 Threads, box', '969,90', 'intel_cpu_core_i7-7820.jpg', 'Disponibile'),
('024', 'AMD CPU Ryzen 7 1800X', 'AMD CPU 4,00GHZ, AM4, 20MB CACHE, 95W, senza dissipatore', '529,90', 'amd_cpu_ryzen.jpg', 'Disponibile');

INSERT INTO cuffie (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('025', 'Aorus E1 Headset, Aluminum In-Ear Hi-Fi', 'Headset di classe superiore da Aorus con tecnologia in-ear, driver da 9mm, Balanced Armature Drivers e struttura in alluminio', '119,90', 'aoruse1.jpg', 'Non Disponibile'),
('026', 'Asus Cerberus Arctic Stereo Gaming Headset - Bianco', 'Gaming headset da Asus ad alta qualità audio con driver da 60mm e sistema di cancellazione del rumore', '39,90', 'asusCerberus.jpg', 'Non Disponibile'),
('027', 'Asus Echelon Forest Stereo Gaming Headset', 'Gaming headset in versione camouflage ad alta qualità audio da Asus con driver da 50mm e sistema attivo di cancellazione del rumore', '69,90', 'asusEchelon.jpg', 'Disponibile'),
('028', 'Asus ROG Centurion 7.1 Gaming Headset', 'Gaming headset serie ROG da Asus con 7.1 canali reali, driver da 40mm e sistema attivo di cancellazione del rumore ambientale', '239,90', 'asusRog.jpg', 'Non Disponibile'),
('029', 'Corsair Gaming VOID PRO RGB Wireless Dolby 7.1 - Bianco', 'Headset wireless con audio Dolby 7.1, illuminazione RGB, driver 50mm e earpads in schiuma a memoria di forma da Corsair Gaming', '119,90', 'voidPro.jpg', 'Non Disponibile'),
('030', 'Razer Destiny 2 Man War Tournament Edition', 'Cuffie high end da Razer con altissima qualità audio, microfono a scomparsa in edizione speciale Destiny 2', '129,90', 'razerDestiny.jpg', 'Disponibile'),
('031', 'H820E Headset USB', 'Le cuffie Headset H820e sono certificate per l''uso con le principali applicazioni software per conferenze, quali Skype for Business e Cisco Jabber', '164,90', 'headset_usb.jpg', 'Disponibile'),
('032', 'Logitech cuffie con microfono wireless', 'Esegui la connessione ai tuoi dispositivi preferiti e passa dal PC al tablet e dal tablet allo smartphone o viceversa in tutta semplicità', '129,90', 'logitech_cuffie.jpg', 'Disponibile'),
('033', 'H650E Headset stereo USB', 'L’audio DSP e il microfono con eliminazione del rumore consentono comunicazioni di livello professionale mentre l’indicatore LED di chiamata in corso e il dispositivo di controllo sul cavo di rapido accesso rendono più piacevole l’utilizzo delle cuffie H650e', '64,90', 'headset_stereo.jpg', 'Disponibile'),
('034', 'H650E Headset mono USB', 'Addetti alle vendite, rappresentanti del servizio clienti e altri uomini d''affari che trascorrono tutta la giornata al telefono apprezzeranno sicuramente il comfort e il design di Logitech H650e', '60,90', 'headset_mono.jpg', 'Disponibile'),
('035', 'Logitech cuffie con microfono G35', 'La vittoria non ha mai avuto un suono così dolce, grazie al rivoluzionario suono surround 7.1 Dolby. Avverti l''avvicinarsi del nemico, Esplosioni, rumori di passi, fuoco nemico, passaggio di veicoli, comandi ai membri del tuo team, puoi ascoltare tutto con un realismo incredibile', '59,90', 'logitech_cuffie_microfono.jpg', 'Disponibile'),
('036', 'PHILIPS Cuffia DJ', 'Immergiti nella musica con la nuova tecnologia di cancellazione attiva del rumore ActiveShield. Cuscini tattili che alleviano la pressione per una maggiore comodità e un design compatto ideale per favorire il trasporto e la conservazione del prodotto', '129,90', 'phiips_cuffia.jpg', 'Disponibile');

INSERT INTO memorie_interne (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('037', 'Seagate Archive HDD, SATA 6G, 5.900RPM, 3,5 Pollici - 8 TB', 'Efficiente e veloce disco da 3.5 con capacità 8Tb da Seagate con 128Mb di cache e connessione SATA 6G', '299,90', 's-l225.jpg', 'Disponibile'),
('038', 'Seagate Barracuda, SATA 6G, 7200RPM, 3,5 Pollici - 3 TB', 'Efficiente e veloce disco da 3.5 con capacità 3Tb da Seagate con 64Mb di cache e connessione SATA 6G', '99,90', 'barracuda.jpg', 'Disponibile'),
('039', 'Corsair Force MP500 NVMe SSD, PCIe 3.0 M.2 Type 2280 - 240 GB', 'Performance fuori scala da Corsair per questo SSD in formato M.2 con 3.000 MB/s in lettura e 2.400 MB/s in scrittura', '169,90', 'corsairForce.jpg', 'Disponibile'),
('040', 'Corsair Force MP500 NVMe SSD, PCIe 3.0 M.2 Type 2280 - 480 GB', 'Performance fuori scala da Corsair per questo SSD in formato M.2 con 3.000 MB/s in lettura e 2.400 MB/s in scrittura', '279,90', 'corsairForce480gb.jpg', 'Disponibile'),
('041', 'Corsair Force Series LE SATA III SSD 2.5 - 960GB', 'Performante SSD da Corsair con max. 560 / 540 MB/s Lettura/Scrittura e 3 anni di garanzia', '419,90', 'corsairForceLE.jpg', 'Disponibile'),
('042', 'Corsair Neutron XTi SATA III SSD 2.5 - 1.920GB', 'SSD Corsair Neutron XTi con controller Quad-Core e max. 560 / 540 MB/s Lettura/Scrittura e 100K IOPS (4k aligned)', '899,90', 'corsairNeutron.jpg', 'Disponibile'),
('043', 'HARD DISK SATA3 3.5" 8000GB(8TB)', 'Gli hard disk per la videosorveglianza WD Purple offrono l''esclusiva tecnologia AllFrame', '319,90', 'hard_disk_800gb.jpg', 'Disponibile'),
('044', 'HARD DISK SATA3 3.5" 8000GB(8TB) WD80EFZX WD RED', 'Western Digital Red. Capacità hard disk: 8000 GB, Interfaccia hard disk: Serial ATA III, Velocità di rotazione hard disk: 5400 Giri/min', '299,90', 'hard_disk_nas.jpg', 'Disponibile'),
('045', 'HARD DISK SATA3 3.5" 6000GB(6TB) WD6002FFWX WD RED PRO', 'Capacità hard disk: 6000 GB, Interfaccia hard disk: Serial ATA III, Velocità di rotazione hard disk: 7200 RPM', '279,90', 'hard_disk_600gb.jpg', 'Disponibile'),
('046', 'WESTERN DIGITAL HDD 6TB SATAIII WD RED 3,5', 'La nostra formula di successo ha portato alla crescita di WD Red rendendola una delle soluzioni con capacità più elevata attualmente disponibili', '236,90', 'hard_disk_6tb.jpg', 'Disponibile'),
('047', 'HARD DISK SATA3 3.5" 6000GB(6TB) WD60EZRZ', 'Gli hard disk WD offrono l''accesso gratuito a WD Acronis True Image. Il nostro software disponibile in download consente di copiare velocemente i dati nel nuovo disco, senza dover reinstallare il sistema operativo', '209,90', 'hard_disk_sata3.jpg', 'Disponibile'),
('048', 'HARD DISK SATA3 3.5" 4000GB(4TB) WD4002FFWX WD RED PRO', 'Progettato specificamente per le PMI, WD Red Pro è disponibile per ambienti NAS medio-grandi fino a 16 alloggiamenti', '208,90', 'hard_disk_sata4tb.jpg', 'Disponibile');

INSERT INTO memorie_ram (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('049', 'Corsair Vengeance RGB LED DDR4, 3.333 MHz, C16 - Kit 32GB (4x 8GB)', 'memorie 1,35V a 3.333MHz da Corsair serie Vengeance LED con illuminazione RGB programmabile', '499,90', 'ram.jpg', 'Disponibile'),
('050', 'Corsair Vengeance LPX DDR4 PC4-26400, 3.300 MHz, C16, Nero - Kit 16GB (2x 8GB)', 'memorie 1,35V a 3.300MHz da Corsair serie Vengeance LPX con timing CL 16-18-18-36 e dissipatore Vengeance Airflow', '229,90', 'ram.jpg', 'Disponibile'),
('051', 'Corsair Dominator Platinum DDR4 PC4-26400, 3.333 MHz, C16 - Kit 32GB (4x 8GB)', 'memorie 1,35V a 3.333MHz da Corsair serie Dominator Platinum con timing CL 16-18-18-36 con Airflow Platinum Dominator', '469,90', 'ram.jpg', 'Disponibile'),
('052', 'Corsair Vengeance LPX DDR4 PC4-33000, 4.133 MHz, C19, Nero - Kit 8GB (2x 4GB)', 'memorie 1,35V a 4.133MHz da Corsair serie Vengeance LPX con timing CL 19-25-25-45 e dissipatore Corsair Vengeance Airflow', '189,90', 'ram.jpg', 'Disponibile'),
('053', 'Corsair Vengeance LPX DDR4 PC4-33000, 4.133 MHz, C19, Rosso - Kit 8GB (2x 4GB)', 'memorie 1,35V a 4.133MHz da Corsair serie Vengeance LPX con timing CL 19-25-25-45 e dissipatore Corsair Vengeance Airflow', '179,90', 'ram.jpg', 'Disponibile'),
('054', 'Corsair Vengeance LPX DDR4 PC4-35200, 4.400 MHz, C19, Rosso - Kit 16GB (2x 8GB)', 'memorie 1,4V a 4.400MHz da Corsair serie Vengeance LPX con timing CL 19-23-23-45 e dissipatore Corsair Vengeance Airflow', '399,90', 'ram.jpg', 'Disponibile'),
('055', 'DDR4 2666MHZ 32GB 4 X 288 DIMM DOMI', 'DDR4 2666MHZ 32GB 4 X 288 DIMM DOMI', '539,90', 'DDR4_2666mhz.jpg', 'Disponibile'),
('056', 'GEIL 32GB(8GBx4) PC4-2400', 'GEIL 32GB(8GBx4) PC4-2400 3000MHz EVO X Hybrid-Independent-Light-Module 15-17-17-35 - RGB LED ROG-Certified', '519,90', 'geil_32gb.jpg', 'Disponibile'),
('057', 'VENGEANCE LPX 32 GB DDR4 2666 MHZ', 'VENGEANCE LPX 32 GB DDR4 2666 MHZ', '499,90', 'vemgeance_lpx.jpg', 'Disponibile'),
('058', '32GB 3000MHz DDR4 CL15 DIMM (Kit of 4) XMP HyperX Predator', 'La memoria HyperX® Predator DDR4 ha adottato un nuovo dissipatore di calore in alluminio nero dal design più aggressivo che ne migliora le prestazioni di dissipazione a tutto vantaggio dell''affidabilità complessiva.', '489,90', 'hyperx.jpg', 'Disponibile'),
('059', 'RAM DDR4 GEIL 32GB(16GBx2)', 'RAM DDR4 GEIL 32GB(16GBx2) PC4-19200 2400MHz FORZA Heatsink System 16-16-16-36', '439,90', 'geil_ram.jpg', 'Disponibile'),
('060', 'DDR4 3000MHZ 16GB 4 X 288 DIMM', 'DDR4 3000MHZ 16GB 4 X 288 DIMM', '289,90', 'ddr4_3000.jpg', 'Disponibile');

INSERT INTO monitor (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('061', 'Asus MG248QR, 60,96 cm (24 pollici), FreeSync, 144 Hz, TN - DP, HDMI', 'monitor Full HD con pannello TN da Asus con tempo di risposta 1 ms, 144hz di refresh e tecnologia ASUS Ultra Low Blue Light', '349,90', 'monitor.jpg', 'Disponibile'),
('062', 'Asus MG278Q, 68,58 cm (27 pollici), 144Hz Widescreen, FreeSync - DP', 'monitor 27 pollici da Asus con tempo di risposta 4 ms, AMD Adaptive Sync, 144 Hz e pannello TN', '569,90', 'monitor.jpg', 'Disponibile'),
('063', 'Asus MG279Q, 68,58 cm (27 pollici), 144Hz Widescreen, FreeSync - DP', 'monitor 27 pollici da Asus con tempo di risposta 4 ms, AMD Adaptive Sync, 144 Hz e pannello IPS', '669,90', 'monitor.jpg', 'Disponibile'),
('064', 'Asus MX27AQ, 68,58 cm (27 pollici) Widescreen - DP, HDMI', 'monitor 27 pollici ultra flat da ASUS con risoluzione WQHD 2.560 x 1.440 pixel, tecnologia AH-IPS e speaker da 3W', '449,90', 'monitor.jpg', 'Disponibile'),
('065', 'ASUS PA328Q, 81,28 cm (32 pollici), 4K/UHD Widescreen - DP, HDMI', 'monitor Ultra-HD 32 pollici professionale da ASUS con pannello IPS 10-Bit, 100% sRGB, Displayport & HDMI 2.0', '1279,90', 'monitor.jpg', 'Disponibile'),
('066', 'Asus ROG Swift PG348Q, 86,7 cm (34 Pollici) G-SYNC Widescreen - DP, HDMI', 'monitor UWHD con tecnologia G-SYNC da Asus con tempo di risposta 4 ms, 100hz refresh & pannello IPS da 34 pollici', '1199,90', 'monitor.jpg', 'Disponibile'),
('067', 'Monitor Asus ROG Swift PG348Q', 'Monitor Asus ROG Swift PG348Q , 86,7 cm (34 Pollici) G-SYNC Widescreen - DP, HDMI', '1399,90', 'asus_rog.jpg', 'Disponibile'),
('068', 'Monitor Samsung Gaming 49" CHG90', 'Monitor Samsung Gaming 49" CHG90, Curved LED VA, Super ultra-wide 32:9, 3840X1080, 144Hz, 1MS, Quantum Dot, HDR, FreeSync2 - LC49HG90DMNXZA', '1299,90', 'samsung_gaming.jpg', 'Disponibile'),
('069', 'Acer Predator Gaming Monitor X34A - 34", WQHD, 100z, Gsync -UM.CX0EE.A01', 'Il primo monitor curvo al mondo che ti immerge completamente nell''universo del gioco. Assolutamente incredibile.', '1199,90', 'acer_predator.jpg', 'Disponibile'),
('070', 'Monitor Samsung Gaming 34"', 'Monitor Samsung Gaming 34", Curved LED 34" 21:9 SM-C34F791WQU 4ms 3440x1440 3000:1 WHITE 2xHDMI DP', '999,90', 'samsung_gaming_34.jpg', 'Disponibile'),
('071', 'Monitor Gaming Acer Predator XB-2K 27"', 'I monitor serie XB1 sono dotati di ogni funzionalità. Crea la tua esperienza di gioco completamente nuova con risoluzioni estreme, rapide frequenze di aggiornamento, tecnologia IPS', '899,90', 'acer_predator_gaming.jpg', 'Disponibile'),
('072', 'Monitor Asus ROG Swift PG278QR', 'Monitor Asus ROG Swift PG278QR, 68,5 cm (27 Pollici) G-SYNC Widescreen - DP', '769,90', 'asus_rog_swift.jpg', 'Disponibile');

INSERT INTO mouse_tastiere (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('073', 'Trust Gaming GXT 155 Gaming Mouse - Nero', 'mouse da gioco Elite, con pesi integrati personalizzabili e memoria interna per profili programmabili', '49,90', 'razer_mouse.jpg', 'Disponibile'),
('074', 'Corsair Gaming GLAIVE RGB Gaming Mouse, 16000 DPI - Alluminio', 'mouse gaming da Corsair con sensore laser da 16.000 DPI, struttura in alluminio e componenti intercambiabili', '69,90', 'razer_mouse.jpg', 'Disponibile'),
('075', 'Cooler Master MasterMouse MM520, 12000 DPI, RGB, Claw Grip', 'mouse pro gaming da Cooler Master con 7 tasti, sensore ottico da 12.000 DPI, 512 KB memoria integrata ed illuminazione RGB', '69,90', 'razer_mouse.jpg', 'Disponibile'),
('076', 'Corsair Gaming STRAFE RGB, Cherry MX Silent - Layout ITA', 'tastiera meccanica pro gamer da Corsair con kit tasti antiscivolo, retroilluminazione RGB e switch Cherry MX Silent', '149,90', 'corsair_gaming.jpg', 'Disponibile'),
('077', 'Logitech Wireless Desktop MK710', 'bundle con tastiera e mouse Logitech, tecnologia Wireless e alta qualità per durare nel tempo', '99,90','corsair_gaming.jpg', 'Disponibile'),
('078', 'Razer Turret - Layout US', 'bundle Razer con mouse Gaming e LapBoard da divano', '179,90', 'razer_mouse.jpg', 'Disponibile'),
('079', 'TASTIERA GAMING ASUS ROG', 'TASTIERA GAMING ASUS ROG Claymore Gaming Keyboard - ITA', '254,90', 'tastiera_gaming_asus.jpg', 'Disponibile'),
('080', 'CORSAIR GAMING K95 RGB BROWN', 'CORSAIR GAMING K95 RGB BROWN', '239,90', 'corsair_gaming.jpg', 'Disponibile'),
('081', 'CORSAIR GAMING K70 RGB RAPIDFIRE', 'CORSAIR GAMING K70 RGB RAPIDFIRE', '229,90', 'corsair_gamingk70', 'Disponibile'),
('082', 'MOUSE GAMING ASUS ROG', 'MOUSE GAMING ASUS ROG SPATHA L701-1A-ROG', '179,90', 'mouse_asus_rog.jpg', 'Disponibile'),
('083', 'Razer Mouse NAGA Epic Chroma', 'Razer Mouse NAGA Epic Chroma', '159,90', 'razer_mouse.jpg', 'Disponibile'),
('084', 'Razer Mouse Wireless OUROBOROS USB', 'Razer Mouse Wireless OUROBOROS USB', '144,90', 'razer_mouse_wireless.jpg', 'Disponibile');

INSERT INTO case_pc (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('085', 'Corsair Graphite 780T - Nero', 'nuovo connubio di design e funzionalità da Corsair con nuovi elementi della serie Graphite in versione Full Tower', '189,90', 'workstation-aventum-pro.jpg', 'Disponibile'),
('086', 'Corsair Crystal 570X RGB in Vetro Temperato - Rosso con Finestra', 'case gamer da Corsair con 7 slot PCI, supporto per radiatori da 360/240mm, finestra in vetro temprato e ventole RGB', '209,90', 'workstation-aventum-pro.jpg', 'Disponibile'),
('087', 'Cooler Master Cosmos C700P, TG - Nero/Argento con Finestra', 'edizione rinnovata della serie Cosmos da Cooler Master con design sportivo, paratie in vetro temperato ed illuminazione RGB', '289,90', 'workstation-aventum-pro.jpg', 'Disponibile'),
('088', 'Cooler Master Cosmos II RC-1200-KKN1 - Nero', 'nuovo Cosmos II da Cooler Master con design sportivo, ottimizzazione dei flussi d''aria interni e pannello di controllo avanzato', '399,90', 'workstation-aventum-pro.jpg', 'Disponibile'),
('089', 'Aerocool P7-C1-BG - Nero con Finestra in Vetro Temperato', 'case con design esagonale da Aerocool con illuminazione personalizzabile e finestra laterale in vetro temperato', '119,90', 'workstation-aventum-pro.jpg', 'Disponibile'),
('090', 'Hydra Desk HD-DSK-001 Desk Case - Nero', 'ultimate desktop per pro gamers da Hydra 100% alluminio con amplia espandibilità e predisposizione per liquido, 100% made in Italy', '1109,90', 'workstation-aventum-pro.jpg', 'Disponibile'),
('091', 'Pc Acer AG6-710 40L CI7-7700K', 'Lo definiscono "La macchina". Combatti in prima linea nella battaglia intergalattica stando saldamente al comando.', '1109,90', 'acer_ag6-710.jpg', 'Disponibile'),
('092', 'PC HP 400 G4 SFF 1JJ78EA Black i7-7700', 'Progettato per adattarsi all''ambiente di lavoro moderno, oggi e in futuro, con uno chassis del 27% più piccolo rispetto alla precedente generazione di HP, l''affidabile e sicuro HP ProDesk 400 MT, elegantemente ridisegnato, è un PC potente con prestazioni scalabili per crescere insieme all''azienda.', '929,90', 'pc_hp400.jpg', 'Disponibile'),
('094', 'WKS LENOVO Think P320', 'WKS LENOVO Think P320 30BH0003IX i7-7700 8DDR4uDIMM 1TB W10Pro ODD Glan Raid0/1/10/5 8USB VGA 2DP 9in1 T+M 3YOS', '1209,90', 'wks_lenovo.jpg', 'Disponibile'),
('095', 'Cooler Master Silencio 652', 'CPU Intel i7 5820k VGA PNY QUADRO K620 2GB GDDR3', '1309,90', 'workstation_ak.jpg', 'Disponibile'),
('096', 'Cooler Master Mastercase 6 Pro', 'è un PC potente con prestazioni scalabili per crescere insieme all''azienda.', '1109,90', 'akworkstationthird_MED.jpg', 'Disponibile'),
('097', 'PC ASUS 10LT D320SF-I77700020R', 'PC ASUS 10LT D320SF-I77700020R SFF i7-7700 8G 1TB ODD W10Pro 6USB CardR HDMI T+Musb 1Y', '809,90', 'pc_asus.jpg', 'Disponibile');


INSERT INTO raffreddamento (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('098', 'Corsair Hydro Series H80i v2 Extreme Performance Liquid CPU Cooler', 'sistema a liquido da Corsair a circuito chiuso con radiatore da 120mm e doppia ventola SP120L PWM ad alta silenziosità', '104,90', 'raffreddamento.jpg', 'Non Disponibile'),
('099', 'Enermax LiqTech TR4 240 Watercooling AIO - 240 mm', 'sistema a liquido da Enermax a circuito chiuso con radiatore da 240mm e doppia ventola PWM per processori AMD TR4 ThreadRipper', '149,90', 'raffreddamento.jpg', 'Non Disponibile'),
('100', 'Thermaltake Floe Riing RGB TT Premium Edition AIO - 240mm', 'dissipatore AIO da Thermaltake con ventole RGB e radiatore da 240mm', '169,90', 'raffreddamento.jpg', 'Non Disponibile'),
('101', 'Cooler Master MasterFan Pro 140 Air Flow RGB - 140 mm', 'ventola LED RGB compatibile con varie tecnologie tra cui ASUS Aura, Gigabyte RGB Fusion, 500-800 RPM, 53 CFM, 0.54 mmH2O', '29,90', 'raffreddamento.jpg', 'Non Disponibile'),
('102', 'Aerocool Lighting ventola 140mm - Blu', 'ventola con 11 pale trasperenti e LED luminosi da Aerocool', '19,90', '', 'Disponibile'),
('103', 'Aerocool Lighting ventola 140mm - Rosso', 'ventola con 11 pale trasperenti e LED luminosi da Aerocool', '79,90', 'raffreddamento.jpg', 'Non Disponibile'),
('104', 'THERMALTAK RAF.LIQUIDO WATER 3.0', 'THERMALTAK RAF.LIQUIDO WATER 3.0 RIING RED 140 CL-W150-PL14RE-A', '108,90', 'CL-W150-PL14RE-A_MED.jpg', 'Disponibile'),
('105', 'NZXT AER RGB KIT 2 VENTOLE RGB LED 120mm + Controller Hue+', 'Progettata per l''integrazione perfetta con HUE+, la ventola Aer RGB fornisce un flusso d''aria ottimale e personalizzazioni di illuminazione avanzate. ', '19,90', 'RF-AR120-C1_MED.jpg', 'Disponibile'),
('106', 'NZXT AER RGB 3 VENTOLE RGB LED 120mm CONTROLLATE DIGITALMENTE', 'Collegamenti di gruppo e a catena di fino a cinque ventole per canale di HUE+ per varie modalità di illuminazione che funzionano in perfetta armonia', '89,90', 'RF-AR120-T1_MED.jpg', 'Disponibile'),
('107', 'Cooler Master MASTERFAN PRO 140 AF RGB PACK', 'Cooler Master MASTERFAN PRO 140 AF RGB PACK', '71,90', '4719512060506_MED.jpg', 'Disponibile'),
('108', 'Cooler Master MASTERFAN PRO 120 AP RGB PACK', 'Cooler Master MASTERFAN PRO 120 AP RGB PACK', '69,90', '4719512060490_MED.jpg', 'Disponibile'),
('109', 'Cooler Master MASTERFAN PRO 120 AB RGB PACK', 'Cooler Master MASTERFAN PRO 120 AB RGB PACK', '61,90', '4719512060469_MED.jpg', 'Disponibile');


INSERT INTO schede_audio (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('110', 'Asus Xonar DX/XD/A PCIe', 'Scheda Audio per slot PCIe 7.1 con Tecnologia Dolby Home Theater', '59,90', '4716659682646_MED.jpg', 'Disponibile'),
('111', 'ASUS Xonar U3 Scheda Audio Hi-Speed USB', 'scheda audio USB da ASUS serie Xonar con amplificatore per headset e DAC', '39,90', '4716659682646_MED.jpg', 'Disponibile'),
('112', 'Asus Strix RAID Pro 7.1 Gaming Audio Card PCIe', 'scheda audio pro gaming PCIe da Asus con DAC ESS SABRE9006A, amplificatore cuffie da 600Ohm e software di gestione', '119,90', '4716659682646_MED.jpg', 'Disponibile'),
('113', 'Asus Xonar ROG Phoebus - PCIe', 'scheda audio ROG per gamer, con box di controllo, amplificatore per headset e XEAR 3D', '159,90', '4716659682646_MED.jpg', 'Disponibile'),
('114', 'Asus Xonar Essence STX II 7.1 Scheda Audio PCIe x1', 'scheda audio semi professionale da Asus con 124 dB SNR, Audio discreto 7.1 ed amplificatore per HeadSet', '249,90', '4716659682646_MED.jpg', 'Disponibile'),
('115', 'Asus Xonar Essence STU, Hi-Speed USB', 'convertitore USB DAC da Asus con rapporto segnale / rumore di 120 dB e amplificatore (TPA6120A2) da 600 ohm', '319,90', '4716659682646_MED.jpg', 'Disponibile'),
('116', 'XONAR ESSENCE STX II 7.1', 'Quattro anni dopo il debutto di Essence STX, ASUS continua nel suo impegno di fornire schede audio sempre migliori e di fascia superiore per deliziare i più esigenti degli audiofili.', '299,90', '4716659682646_MED.jpg', 'Disponibile'),
('117', 'XONAR ESSENCE STX II', 'Basandosi su anni di esperienza nello sviluppo di Essence One, Essence STU e Essence III, Essence STX II beneficia di una progettazione meticolosa, prestazioni eccellenti ed una profonda musicalità Hi-Fi.', '249,90', '4716659682639_MED.jpg', 'Disponibile'),
('118', 'STRIX RAID DLX', 'Strix Raid DLX è una scheda audio premium costruita con componenti di altissima qualità per audiofili, capace di soddisfare i giocatori che esigono il massimo delle prestazioni audio.', '229,90', '4712900005950_MED.jpg', 'Disponibile'),
('119', 'XONAR D2/PM/A', 'XONAR D2/PM/A', '189,90', '4719543030332_MED.jpg', 'Disponibile'),
('120', 'STRIX RAID PRO', 'Strix Raid Pro è una scheda audio premium costruita con componenti di altissima qualità per audiofili, capace di soddisfare i giocatori che esigono il massimo delle prestazioni audio.', '159,90', '4712900005967_MED.jpg', 'Disponibile'),
('121', 'XONAR PHOEBUS SOL', 'Cogli di sorpresa gli avversari grazie al migliore posizionamento audio e goditi una musica cristallina grazie ad un rapporto segnale-rumore (SNR) di 118dB con amplificatore integrato da 600 ohm per cuffie. ', '139,90', '4716659447740_MED.jpg', 'Disponibile');

INSERT INTO schede_madri (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('122', 'ASUS PRIME X399-A, AMD X399 Motherboard - Socket TR4', 'mobo X399 ATX con 4x PCIe x16 (x16/x16/x8/x8), 3x USB 3.1 (2× Type A & 1x Type C), 2x M.2 (PCIe 3.0 x4/SATA) & 6x SATA 6G, 12x USB 3.0 / 4x USB 2.0 & Illuminazione RGB', '359,90', '4712900663716_MED.jpg', 'Disponibile'),
('123', 'Gigabyte Aorus X399 Gaming 7, AMD X399 MOtherboard - Socket TR4', 'mobo X399 ATX con 5x PCIe x16 (x16/x16/x8/x8/4), 2x USB 3.1 (1× Type A & 1x Type C), 3x M.2 (PCIe 3.0 x4/SATA) & 8x SATA 6G, 10x USB 3.0 / 4x USB 2.0 & Illuminazione RGB', '399,90', '4712900663716_MED.jpg', 'Disponibile'),
('124', 'ASUS ROG Zenith Extreme, AMD X399 Motherboard - Socket TR4', 'mobo X399 ATX con 4x PCIe x16 (x16/x16/x8/x8), 2x USB 3.1 (1× Type A & 1x Type C), 3x M.2 (PCIe 3.0 x4/SATA) & 6x SATA 6G, 12x USB 3.0 / 4x USB 2.0, Illuminazione RGB & AC-WLAN / 10 Gigabit
', '589,90', '4712900663716_MED.jpg', 'Disponibile'),
('125', 'Gigabyte Aorus X299-Ultra Gaming, Intel X299 Mainboard - Socket 2066', 'scheda madre X299 da Gigabyte con 5× PCIe 3.0 x16 (2× x16 / 1× x8 / 2× x4) 7× USB 3.1 / 8× USB 3.0, 3× M.2 (PCIe 3.0 x4) & 8x SATA 6G, Gigabyte RGB Fusion LED', '309,90', '4712900663716_MED.jpg', 'Disponibile'),
('126', 'Asus PRIME X299-DELUXE + Steam Gift Card 50€', 'scheda madre X299 da Asus in bundle con Steam Gift Card da 50€', '479,90', '4712900663716_MED.jpg', 'Disponibile'),
('127', 'Asus ROG Rampage VI EXTREME, Intel X299 Mainboard - Socket 2066', 'scheda madre X299 da Asus con 4× PCIe 3.0 x16, 3× USB 3.1 / 12× USB 3.0 / 2× USB 2.0, 3× M.2 (PCIe 3.0 x4) & 1× U.2 & 6x SATA 6G, illuminazione Asus AURA RGB & WiFi / 10Gb-LAN', '699,90', '4712900663716_MED.jpg', 'Disponibile'),
('128', 'MB Asus MAXIMUS IX EXTREME S1151 Z270', 'ASUS MAXIMUS IX EXTREME. Tipi di memoria supportati: DDR4-SDRAM, tipo di slot di memoria: DIMM, Velocità di memoria supportate: 2400,2666,3400,3466,3500,3600,3733,3800,3866,4000,4133 MHz.', '679,90', '4712900663716_MED.jpg', 'Disponibile'),
('129', 'ASUS RAMPAGE V EDITION 10', 'ASUS ROG Rampage V Edition 10 Intel X99 LGA 2011-v3 ATX', '559,90', '4712900448504_MED.jpg', 'Disponibili'),
('130', 'MB Asus PRIME X299-DELUXE', 'MB Asus PRIME X299-DELUXE LGA 2066 8*DDR4 4*PCI-E M.2 7*SATA3', '519,90', '4712900763881_MED.jpg', 'Disponibile'),
('131', 'MB MSI X299 XPOWER GAMING ', 'MB MSI X299 XPOWER GAMING AC LGA2066 8DDR4 4PCI-EX16 1PCI-EX 1U.2 3M.2 10SATA3 3USB3', '489,90', '4719072525958_MED.jpg', 'Disponibile'),
('132', 'X99-DELUXE II S2011 V3 X99 ATX', 'ASUS X99-DELUXE II. Tipi di memoria supportati: DDR4-SDRAM, tipo di slot di memoria: DIMM, Canali di memoria: Quad. Famiglia processore: Intel, Processori compatibili: Core i7, Socket processore: LGA 2011-v3.', '479,90', '4712900397796_MED.jpg', 'Disponibile'),
('133', 'MB MSI X299 Gaming M7 ACK', 'MB MSI X299 Gaming M7 ACK LGA 2066 8*DDR4 6*PCI-E M2. 8*SATA3 -MSIX299', '469,90', '4719072525941_MED.jpg', 'Disponibile');

INSERT INTO schede_video (`Codice_prodotto`, `Nome`, `Descrizione`, `Prezzo`, `Img`, `Disponibilita`)
VALUES ('134', 'Gigabyte Radeon RX Vega 56 8G, 8192 MB HBM2', 'Radeon RX Vega con 1.471 MHz Core, 8 Gb di Memoria HBM2 & 3x DisplayPort 1.4 / 1x HDMI', '599,90', 'nvidia.jpg', 'Disponibile'),
('135', 'Gigabyte Radeon RX Vega 64 Silver 8G, 8192 MB HBM2', 'Radeon RX Vega con 1.546 MHz Core, 8 Gb di Memoria HBM2 & 3x DisplayPort 1.4 / 1x HDMI', '729,90', 'nvidia.jpg', 'Disponibile'),
('136', 'Asus GeForce GTX 1080 Ti STRIX O11G Gaming, 11GB GDDR5X', 'Pascal Power da ASUS: GTX 1080 Ti con 1.683 / 1.708 MHz Core, 11Gb di Memoria (11.100 MHz) e Aura Sync RGB, VR & 4K gaming', '969,90', 'nvidia.jpg', 'Disponibile'),
('137', 'Asus ROG Poseidon GeForce GTX 1080 TI 11GB Platinum Edition', 'Pascal Power da ASUS con diussipazione a liquido integrata! GTX 1080 Ti con 1.733 MHz Core, 11GB MB di Memoria (11.1100 MHz) e dissipazione con WB integrato', '999,90', 'nvidia.jpg', 'Disponibile'),
('138', 'VGA 12GB PALIT GeForce GTX Titan X (DVI-I,Mini-HDMI,3xDP,DDR5,A)', 'NVIDIA TITAN X, con architettura NVIDIA Pascal™, è la scheda grafica ideale. Questa rivoluzionaria versione della scheda TITAN X offre a qualsiasi utente la potenza necessaria a realizzare cose in precedenza ritenute impossibili', '1349,90', 'nvidia.jpg', 'Disponibile'),
('139', 'Scheda grafica NVIDIA Quadro M6000 24 GB', 'Creativi, stilisti e designer potranno affrontare carichi di lavoro estremamente elevati di visualizzazione, simulazione ed analisi con l''efficiente NVIDIA® Quadro® M6000 ad alte prestazioni e i suoi straordinari 24 GB di memoria GDDR5 ad elevata larghezza di banda', '9660,90', 'nvidia.jpg', 'Disponibile'),
('140', 'VGA Asus Geforce GTX 1080TI ROG POSEIDON 11G', 'VGA Asus Geforce GTX 1080TI ROG POSEIDON 11G', '1029,90', '4712900748284_MED.jpg', 'Disponibile'),
('141', 'VGA MSI GEFORCE GTX 1080Ti', 'VGA MSI GEFORCE GTX 1080Ti SEA HAWK X 11G DVI+3xDP +HDMI DX12', '959,90', '4719072517878_MED.jpg', 'Disponibile'),
('142', 'VGA Evga GeForce GTX 1080 TI SC2 11GB GDDR5X', 'VGA Evga GeForce GTX 1080 TI SC2 11GB GDDR5X', '729,90', '0843368048204_MED.jpg', 'Disponibile'),
('143', 'VGA ASUS GEFORCE GTX 1080TI ROG', 'VGA ASUS GEFORCE GTX 1080TI ROG STRIX GTX 1080TI O11G-GAMING -VgaSummer', '929,90', '4712900714555_MED.jpg', 'Disponibile'),
('144', 'VGA Zotac Geforce GTX 1080Ti', 'VGA Zotac Geforce GTX 1080Ti Amp Extreme 11GB GDDR5 -1080ti', '909,90', '4895173613081_MED.jpg', 'Disponibile'),
('145', 'VGA MSI GeForce GTX 1080 Founders Edition 8GB GDDR5X', 'VGA MSI GeForce GTX 1080 Founders Edition 8GB GDDR5X', '889,90', '4719072465315_MED.jpg', 'Disponibile');
