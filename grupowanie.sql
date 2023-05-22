SELECT MIN(wynagrodzenie), MAX(wynagrodzenie) from pracownicy;
SELECT MAX(wynagrodzenie)-MIN(wynagrodzenie) as roznica from pracownicy;

SELECT AVG(wynagrodzenie) from pracownicy;

SELECT AVG(pracownicy.wynagrodzenie), stanowiska.nazwa FROM pracownicy 
JOIN stanowiska ON pracownicy.id_stanowisko = stanowiska.id_stanowisko 
GROUP BY stanowiska.id_stanowisko, stanowiska.nazwa
ORDER BY AVG(pracownicy.wynagrodzenie) DESC;

SELECT COUNT(*) from pracownicy;

SELECT SUM(pracownicy.wynagrodzenie), pracownicy.id_stanowisko, stanowiska.nazwa
FROM pracownicy
JOIN stanowiska ON pracownicy.id_stanowisko = stanowiska.id_stanowisko
GROUP BY pracownicy.id_stanowisko, stanowiska.nazwa;

SELECT CONCAT('Na stanowisku ', pracownicy.id_stanowisko, ' (', stanowiska.nazwa, ') pracuje'), COUNT(*) 
FROM pracownicy
JOIN stanowiska ON pracownicy.id_stanowisko = stanowiska.id_stanowisko
GROUP BY pracownicy.id_stanowisko, stanowiska.nazwa;

SELECT miasto, count(*) as liczba_pracownikow from pracownicy group by miasto having count(*)>=2 ORDER BY liczba_pracownikow desc;

SELECT AVG(pracownicy.wynagrodzenie), pracownicy.id_stanowisko, stanowiska.nazwa, COUNT(*)
FROM pracownicy
JOIN stanowiska ON pracownicy.id_stanowisko = stanowiska.id_stanowisko
WHERE pracownicy.Data_zatrudnienia < '2007-01-01'
GROUP BY pracownicy.id_stanowisko, stanowiska.nazwa;

SELECT pracownicy.wynagrodzenie, pracownicy.id_pracownika, pracownicy.miasto, miasta.nazwa
FROM pracownicy
JOIN miasta ON pracownicy.miasto = miasta.id_miasta
WHERE pracownicy.wynagrodzenie < 2500
GROUP BY pracownicy.id_pracownika
ORDER BY pracownicy.wynagrodzenie DESC;

SELECT substring(nazwisko, 1, 1) as pierwsza_litera, count(*) from pracownicy GROUP BY pierwsza_litera ORDER BY pierwsza_litera;

