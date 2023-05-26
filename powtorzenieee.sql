#1
show tables;
#2
select *from pracownicy;
#2
select distinct zawod from pracownicy;
#3
select nazwisko, pensja from pracownicy order by pensja asc; 
select nazwisko, min(pensja) from pracownicy;
#4
select nazwisko, zawod from pracownicy where pensja=1500 order by nazwisko asc limit 2;
#5
select imie, nazwisko, pensja, count(id_pracownika) from pracownicy where pensja=1650 or pensja<=4100 limit 1;
#6
select imie, data_urodzenia from pracownicy where nazwisko="Kowalski" order by data_urodzenia desc; 
#7
select count(id_pracownika), data_urodzenia from pracownicy where nazwisko="Kowalski" order by data_urodzenia asc limit 1;
#8
select imie, nazwisko, data_zatrudnienia, count(id_pracownika) from pracownicy where zawod="plastyk" or "projektant";
#9
select nazwisko from pracownicy where nazwisko like '%b%' or nazwisko like '%wski';
select count(id_pracownika) from pracownicy where nazwisko like '%b%' or nazwisko like '%wski';
#10
select id_pracownika from pracownicy where isnull(dodatek);
#11
select id_pracownika, imie, nazwisko, id_placowki from pracownicy where data_zatrudnienia>='01.01.20221' and data_zatrudnienia<='31.12.2001';
select count(id_pracownika) from pracownicy where data_zatrudnienia>='01.01.20221' and data_zatrudnienia<='31.12.2001'; 
select count(id_pracownika) from pracownicy where data_zatrudnienia>='01.01.20221' and data_zatrudnienia<='31.12.2001' and id_placowki=1; 
#12
select max(pensja) from pracownicy;
#13
select max(pensja)-min(pensja) from pracownicy;
#14
select min(data_zatrudnienia), max(data_zatrudnienia) from pracownicy;
#15
select sum(pensja) from pracownicy where zawod="plastyk";
#16
select count(id_pracownika) from pracownicy where data_zatrudnienia>'01.06.2006';
#17
select zawod, avg(pensja) as "SREDNIA_PENSJA" from pracownicy where id_placowki=3 group by zawod order by zawod asc;
#18
select zawod, avg(pensja) from pracownicy join placowka on pracownicy.id_placowki = placowka.id_placowki where nazwa="magazyn" order by zawod asc;
#19
select imie, nazwisko, id_pracownika from pracownicy where not exists(select id_pracownika from uczestnictwo);
#20
select count(id_pracownika), nazwa from pracownicy join placowka on pracownicy.id_placowki = placowka.id_placowki group by nazwa;
#21
select count(id_pracownika), poziom from pracownicy join wyksztalcenie on pracownicy.id_wyksztalcenia=wyksztalcenie.id_wyksztalcenia group by poziom;
#22
select count(id_pracownika), id_szefa from pracownicy group by id_szefa;





