CREATE TABLE pracownicy1 (
id_pracownik INT PRIMARY KEY,
imie VARCHAR(15),
nazwisko VARCHAR(20),
id_stanowisko INT);

CREATE TABLE stanowiska (
id_stanowisko INT PRIMARY KEY,
nazwa VARCHAR(30));

ALTER TABLE pracownicy1 ADD COLUMN id_stanowisko INT;
ALTER TABLE pracownicy1 ADD FOREIGN KEY (id_stanowisko) REFERENCES stanowiska (id_stanowisko);

INSERT INTO stanowiska VALUES(
	1,
    "mechanik");
INSERT INTO stanowiska VALUES(
	2,
    "mechatronik");
INSERT INTO stanowiska VALUES(
	3,
    "informatyk");

select *from pracownicy1;

INSERT INTO `4ti2p_cw3_16`.`pracownicy1` (`id_pracownik`, `imie`, `nazwisko`, `id_stanowisko`) VALUES ('1', 'Adam', 'Kowalski', '1');
INSERT INTO `4ti2p_cw3_16`.`pracownicy1` (`id_pracownik`, `imie`, `nazwisko`, `id_stanowisko`) VALUES ('2', 'Jan', 'Abacki', '2');
INSERT INTO `4ti2p_cw3_16`.`pracownicy1` (`id_pracownik`, `imie`, `nazwisko`, `id_stanowisko`) VALUES ('3', 'Ala', 'Kot', '3');

INSERT INTO pracownicy1 VALUES(
	1,
    "Jan",
    "Abacki",
    1);
INSERT INTO pracownicy1 VALUES(
	2,
    "Jan",
    "Kowalski",
    2);
INSERT INTO pracownicy1 VALUES(
	3,
    "Adam",
    "Nowak",
    4);
INSERT INTO pracownicy1 VALUES(
	3,
    "Adam",
    "Nowak",
    3);

ALTER TABLE pracownicy1 DROP FOREIGN KEY pracownicy1_ibfk_1;
INSERT INTO pracownicy1 VALUES(
	4,
    "Jan",
    "Nowak",
    5);



