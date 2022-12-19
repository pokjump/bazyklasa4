CREATE TABLE stanowiska (
  id_stanowiska INT PRIMARY KEY,
  nazwa VARCHAR(255)
);

CREATE TABLE pracownicy (
  id_pracownika INT PRIMARY KEY,
  nazwisko VARCHAR(255),
  imie VARCHAR(255),
  id_stanowisko INT,
  data_zatrudnienia DATE,
  wynagrodzenie DECIMAL(10, 2),
  FOREIGN KEY (id_stanowisko) REFERENCES stanowiska(id_stanowiska)
);

CREATE TABLE czytelnicy (
  nr_czytelnika INT PRIMARY KEY,
  nazwisko VARCHAR(255),
  imie VARCHAR(255),
  data_urodzenia DATE,
  ulica VARCHAR(255),
  numer VARCHAR(255),
  kod_pocz VARCHAR(255),
  miasto VARCHAR(255),
  data_zapisania DATE,
  data_skreslenia DATE,
  nr_legitymacji INT,
  funkcja ENUM('PD', 'S'),
  plec ENUM('K', 'M')
);

CREATE TABLE dzialy (
  id_dzial INT PRIMARY KEY,
  nazwa VARCHAR(255)
);

CREATE TABLE ksiazki (
  sygnatura INT PRIMARY KEY,
  tytul VARCHAR(255),
  nazwisko VARCHAR(255),
  imie VARCHAR(255),
  wydawnictwo VARCHAR(255),
  miejsce_wydania VARCHAR(255),
  rok_wydania INT,
  objetosc_ks INT,
  cena DECIMAL(10, 2),
  id_dzial INT,
  FOREIGN KEY (id_dzial) REFERENCES dzialy(id_dzial)
);

CREATE TABLE wypozyczenia (
  nr_transakcji INT PRIMARY KEY,
  sygnatura INT,
  id_pracownika INT,
  nr_czytelnika INT,
  data_wypozyczenia DATE,
  data_zwrotu DATE,
  FOREIGN KEY (sygnatura) REFERENCES ksiazki(sygnatura),
  FOREIGN KEY (id_pracownika) REFERENCES pracownicy(id_pracownika),
  FOREIGN KEY (nr_czytelnika) REFERENCES czytelnicy(nr_czytelnika)
);

RENAME TABLE stanowiska TO stanowisko;

CREATE TABLE autor (
  id_autora INT PRIMARY KEY AUTO_INCREMENT,
  nazwisko VARCHAR(255),
  imie VARCHAR(255)
);

ALTER TABLE ksiazki
  DROP COLUMN nazwisko,
  DROP COLUMN imie;

ALTER TABLE ksiazki
  ADD COLUMN id_autora INT,
  ADD FOREIGN KEY (id_autora) REFERENCES autor(id_autora);

ALTER TABLE czytelnicy
  DROP COLUMN funkcja;

ALTER TABLE czytelnicy
  MODIFY COLUMN nr_legitymacji VARCHAR(20) NOT NULL;

ALTER TABLE czytelnicy
  ALTER COLUMN Miasto SET DEFAULT 'Bielsko-Biała';

INSERT INTO autor (nazwisko, imie)
VALUES ('Sienkiewicz', 'Henryk'),
       ('Prus', 'Bolesław'),
       ('Mickiewicz', 'Adam'),
       ('Twardowski', 'Jan'),
       ('Słowacki', 'Juliusz');
       
INSERT INTO wypozyczenia (id_wypozyczenia, id_czytelnika, id_ksiazki, id_pracownika, data_wypozyczenia, data_zwrotu, kara)
VALUES (1, 1, 1, 1, '2022-11-01', '2022-11-08', 0),
(2, 2, 2, 2, '2022-12-01', '2022-12-08', 0),
(3, 3, 3, 3, '2023-01-01', '2023-01-08', 0),
(4, 4, 4, 4, '2023-02-01', '2023-02-08', 0),
(5, 5, 5, 5, '2023-03-01', '2023-03-08', 0);

INSERT INTO stanowisko (id_stanowiska, nazwa)
VALUES (1, 'Kierownik'),
       (2, 'Bibliotekarz'),
       (3, 'Sprzątaczka'),
       (4, 'Księgowy'),
       (5, 'Recepcjonista');

INSERT INTO pracownicy (id_pracownika, nazwisko, imie, id_stanowisko, data_zatrudnienia, wynagrodzenie)
VALUES (1, 'Kowalski', 'Jan', 1, '2022-01-01', 10000),
       (2, 'Nowak', 'Anna', 2, '2022-02-01', 5000),
       (3, 'Wójcik', 'Piotr', 2, '2022-03-01', 5500),
       (4, 'Wiśniewski', 'Tomasz', 3, '2022-04-01', 3000),
       (5, 'Kaczmarek', 'Agata', 4, '2022-05-01', 7000);
       
INSERT INTO czytelnicy (nr_czytelnika, nazwisko, imie, data_urodzenia, ulica, numer, kod_pocz, data_zapisania, data_skreslenia, nr_legitymacji, plec)
VALUES (1, 'Nowak', 'Jan', '2000-01-01', 'Kwiatowa', '12A', '43-400', '2022-06-01', NULL, 'ABCD1234', 'M'),
       (2, 'Wiśniewska', 'Anna', '2001-02-01', 'Różana', '23B', '43-401', '2022-07-01', NULL, 'EFGH5678', 'K'),
       (3, 'Kowalczyk', 'Piotr', '2002-03-01', 'Kwiatowa', '34C', '43-402', '2022-08-01', NULL, 'IJKL9012', 'M'),
       (4, 'Majewska', 'Agnieszka', '2003-04-01', 'Różana', '45D', '43-403', '2022-09-01', NULL, 'MNOP3456', 'K'),
       (5, 'Nowakowski', 'Tomasz', '2004-05-01', 'Kwiatowa', '56E', '43-404', '2022-10-01', NULL, 'QRST7890', 'M');
       
INSERT INTO dzialy (id_dzial, nazwa)
VALUES (1, 'Fikcja'),
       (2, 'Nauka'),
       (3, 'Dzieci'),
       (4, 'Kuchnia'),
       (5, 'Motoryzacja');
       
INSERT INTO ksiazki (sygnatura, tytul, id_autora, wydawnictwo, miejsce_wydania, rok_wydania, objetosc_ks, cena, id_dzial)
VALUES (1, 'Quo Vadis', 1, 'Znak', 'Kraków', 1895, 400, 50, 1),
       (2, 'Lalka', 2, 'Iskry', 'Warszawa', 1890, 500, 60, 1),
       (3, 'Złote Tarasy', 3, 'Nasza Księgarnia', 'Warszawa', 1965, 300, 40, 2),
       (4, 'Dziady', 4, 'Czytelnik', 'Warszawa', 1832, 350, 45, 1),
       (5, 'Pan Tadeusz', 5, 'Muza', 'Warszawa', 1834, 450, 55, 1);

INSERT INTO wypozyczenia (nr_transakcji, sygnatura, id_pracownika, nr_czytelnika, data_wypozyczenia, data_zwrotu)
VALUES (1, 1, 1, 1, '2022-01-01', '2022-01-07'),
(2, 2, 2, 2, '2022-02-01', '2022-02-07'),
(3, 3, 3, 3, '2022-03-01', '2022-03-07'),
(4, 4, 4, 4, '2022-04-01', '2022-04-07'),
(5, 5, 5, 5, '2022-05-01', '2022-05-07');
