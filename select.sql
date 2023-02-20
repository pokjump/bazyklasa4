select *from ksiazki;

SELECT 
    CONCAT(tytul,
            ' została napisana przez autora: ',
            nazwisko,
            ' ',
            imie) AS 'Dane książek i autorów'
FROM
    ksiazki;
    
SELECT 
    CONCAT(UPPER(imie), ' ', (UPPER(nazwisko))) AS 'Imie i nazwisko pracownikow biblioteki'
FROM
    ksiazki;
    
SELECT 
    CONCAT(LEFT(imie, 1),
            '. ',
            nazwisko,
            ' ',
            tytul) AS 'Książki'
FROM
    ksiazki;
    
SELECT 
    CONCAT(nazwisko, ' ', imie) AS 'Osoba',
    CONCAT(day(data_zatrudnienia),' ', monthname(data_zatrudnienia),' ',year(data_zatrudnienia)) AS 'Data zatrudnienia'
FROM
    pracownicy;
    
SELECT 
    CONCAT(REVERSE(imie), ' ', REVERSE(nazwisko))
FROM
    pracownicy;
    
SELECT 
    CONCAT(nazwa, ' - ', LENGTH(nazwa), ' liter') AS 'Nazwa działów oraz liczba liter'
FROM
    dzialy;

select concat(floor(33-2.45),' ',ceil(123.23+34.4*3)) as zaokrąglanie;

select 2 + sqrt((abs(3.75 - 33)) * power(2, 3)) / (44/11 - 12.5) as wyniks;

SELECT 
    nr_transakcji,
    DATEDIFF(data_zwrotu, data_wypozyczenia) AS liczba_dni
FROM
    wypozyczenia;

