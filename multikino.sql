CREATE TABLE sale(
id_sala INT PRIMARY KEY,
nr_sali INT);

CREATE TABLE rezyserowie(
id_rezyser INT PRIMARY KEY,
imie VARCHAR(20),
nazwisko VARCHAR(20));

CREATE TABLE gatunek(
id_gatunek INT PRIMARY KEY,
nazwa VARCHAR(20));

CREATE TABLE filmy(
id_film INT PRIMARY KEY,
nazwa VARCHAR(30),
id_gatunek INT,
id_rezyser INT);

CREATE TABLE seanse(
id_seansu INT PRIMARY KEY,
id_filmu INT,
id_sala INT,
datase DATE,
godzina TIME);

ALTER TABLE filmy ADD FOREIGN KEY (id_rezyser) REFERENCES rezyserowie (id_rezyser) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE seanse ADD FOREIGN KEY (id_filmu) REFERENCES filmy (id_film) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE seanse ADD FOREIGN KEY (id_sala) REFERENCES sale (id_sala) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE filmy ADD FOREIGN KEY (id_gatunek) REFERENCES gatunek (id_gatunek) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO sale VALUES(
1,
1);
INSERT INTO sale VALUES(
2,
2);
INSERT INTO sale VALUES(
3,
3);

INSERT INTO rezyserowie VALUES(
1,
"Adam",
"Kowalski");
INSERT INTO rezyserowie VALUES(
2,
"Jan",
"Abacki");
INSERT INTO rezyserowie VALUES(
3,
"Quentin",
"Tarantino");

INSERT INTO gatunek VALUES(
1,
"komedia");

INSERT INTO gatunek VALUES(
2,
"sci-fi");

INSERT INTO gatunek VALUES(
3,
"dreszczowiec");


INSERT INTO filmy VALUES(
1,
"Omaga",
1,
1);
INSERT INTO filmy VALUES(
2,
"łotasiet",
2,
2);
INSERT INTO filmy VALUES(
3,
"Pulp Fiction",
2,
2);

select *from seanse;