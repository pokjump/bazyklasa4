use 4ti2p_cw2_16;
CREATE TABLE pracownicy(
imie VARCHAR(30),
nazwisko VARCHAR(30),
data_urodzenia DATE DEFAULT '2019-01-01',
placa DECIMAL(10,2) DEFAULT '3000.00'
);

describe pracownicy;
SELECT *from pracownicy;

ALTER TABLE pracownicy ADD COLUMN id_pracownik int;
ALTER TABLE pracownicy MODIFY COLUMN id_pracownik int PRIMARY KEY;
ALTER TABLE pracownicy MODIFY COLUMN id_pracownik int NOT NULL;
ALTER TABLE pracownicy MODIFY COLUMN id_pracownik int UNIQUE;
ALTER TABLE pracownicy MODIFY COLUMN id_pracownik int auto_increment;

CREATE INDEX index1 ON pracownicy(nazwisko, id_pracownik);

ALTER TABLE pracownicy ADD COLUMN zawod VARCHAR(40);
ALTER TABLE pracownicy MODIFY COLUMN zawod VARCHAR(40) DEFAULT 'nieznany';

INSERT INTO pracownicy VALUES(
	"Daniel",
    "Wlodarczyk",
    '2000-01-13',
    '3450.50',
    default,
    "it"
);
INSERT INTO pracownicy VALUES(
	"Maurycy",
    "Brzezinski",
    '1993-12-11',
    '3500.37',
    default,
    "kierownik"
);
INSERT INTO pracownicy VALUES(
	"Miroslaw",
    "Szymczak",
    '1993-02-25',
    '4000.10',
    default,
    "jefe"
);
INSERT INTO pracownicy VALUES(
	"Aleks",
    "Kowalski",
    '2001-05-03',
    '2500.00',
    default,
    "nowy"
);
INSERT INTO pracownicy VALUES(
	"Ksawery",
    "Ziolkowski",
    '2003-01-01',
    '2353.51',
    default,
    "nowy2"
);
    
CREATE TABLE nauczyciel(
ID INTEGER,
Nazwisko VARCHAR(20),
Imie VARCHAR(20),
E_mail VARCHAR(20),
Wynagrodzenie DECIMAL(10,2),
Stanowisko VARCHAR(20),
Funkcja VARCHAR(20)
);

RENAME TABLE nauczyciel TO Nauczyciele;

ALTER TABLE nauczyciele MODIFY COLUMN ID INTEGER PRIMARY KEY;
ALTER TABLE nauczyciele MODIFY COLUMN Imie VARCHAR(20) NOT NULL;
ALTER TABLE nauczyciele MODIFY COLUMN Nazwisko VARCHAR(20) NOT NULL;

ALTER TABLE nauczyciele ADD COLUMN TEL INTEGER AFTER E_mail;
ALTER TABLE nauczyciele RENAME COLUMN E_mail to email;

ALTER TABLE nauczyciele MODIFY COLUMN Wynagrodzenie DECIMAL(10,2) DEFAULT '2000.00';

ALTER TABLE nauczyciele DROP COLUMN Funkcja;

describe nauczyciele;
SELECT *from nauczyciele;


INSERT INTO `4ti2p_cw2_16`.`nauczyciele` (`ID`, `Nazwisko`, `Imie`, `email`, `TEL`, `Wynagrodzenie`, `Stanowisko`) VALUES ('1', 'Włodarczyk', 'Daniel', 'jd@gmail.com', '123456789', '3000.50', 'ooooo');
INSERT INTO `4ti2p_cw2_16`.`nauczyciele` (`ID`, `Nazwisko`, `Imie`, `email`, `TEL`, `Wynagrodzenie`, `Stanowisko`) VALUES ('2', 'Brzezinski', 'Maurycy', 'jd2@gmail.com', '123455555', '3450.50', 'aaaaaa');
INSERT INTO `4ti2p_cw2_16`.`nauczyciele` (`ID`, `Nazwisko`, `Imie`, `email`, `TEL`, `Wynagrodzenie`, `Stanowisko`) VALUES ('3', 'Włodarczyk', 'Adam', 'jd3@gmail.com', '123456777', '3550.50', 'bbbbb');
INSERT INTO `4ti2p_cw2_16`.`nauczyciele` (`ID`, `Nazwisko`, `Imie`, `email`, `TEL`, `Wynagrodzenie`, `Stanowisko`) VALUES ('4', 'Brzezinski', 'Karol', 'jd4@gmail.com', '123456788', '3650.40', 'aaaaaa');
INSERT INTO `4ti2p_cw2_16`.`nauczyciele` (`ID`, `Nazwisko`, `Imie`, `email`, `TEL`, `Wynagrodzenie`, `Stanowisko`) VALUES ('5', 'Włodarczyk', 'Bartosz', 'jd5@gmail.com', '123456666', '3213.70', 'cccccc');


    
    
    
    