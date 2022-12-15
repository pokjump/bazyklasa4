SELECT *from produkty;
select *from potrawy;
select *from skladniki_potrawy;

CREATE TABLE produkty(
id_produkt INT PRIMARY KEY,
nazwa VARCHAR(25),
cena DOUBLE,
wark DOUBLE);

CREATE TABLE potrawy(
id_potrawa INT PRIMARY KEY,
nazwa VARCHAR(20),
opis VARCHAR(80),
typ VARCHAR(20));

CREATE TABLE skladniki_potrawy(
id_potrawa INT,
id_produkt INT,
masa DOUBLE);

ALTER TABLE skladniki_potrawy ADD FOREIGN KEY (id_potrawa) REFERENCES potrawy (id_potrawa) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE skladniki_potrawy ADD FOREIGN KEY (id_produkt) REFERENCES produkty (id_produkt) ON DELETE CASCADE ON UPDATE CASCADE;

INSERT INTO produkty VALUES(
	1,
    "oregano",
    15.50,
    20);
INSERT INTO produkty VALUES(
	2,
    "ciasto",
    25.16,
    1500);
INSERT INTO produkty VALUES(
	3,
    "ser",
    12.59,
    698);
    
INSERT INTO potrawy VALUES(
	1,
    "pizza",
    "łota siet",
    "wolny");
INSERT INTO potrawy VALUES(
	2,
    "tost",
    "omagaaa",
    "szbyki");
INSERT INTO potrawy VALUES(
	3,
    "zapiek",
    "wth",
    "sredni");
    
INSERT INTO skladniki_potrawy VALUES(
	1,
    2,
    789);
INSERT INTO skladniki_potrawy VALUES(
	2,
    3,
    55);
INSERT INTO skladniki_potrawy VALUES(
	3,
    1,
    123);