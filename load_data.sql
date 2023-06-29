/*dodanie danych do tabeli uczelnia*/
INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku) 
VALUES ('1', 'Wydział Architektury', seq_kierunek_id.NEXTVAL, 'Architektura');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku) 
VALUES ('1', 'Wydział Architektury', seq_kierunek_id.NEXTVAL, 'Gospodarka przestrzenna');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('2', 'Wydział Budownictwa Lądowego i Wodnego', seq_kierunek_id.NEXTVAL, 'Budownictwo');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('3', 'Wydział Chemiczny', seq_kierunek_id.NEXTVAL, 'Biotechnologia');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('3', 'Wydział Chemiczny', seq_kierunek_id.NEXTVAL, 'Chemia i analityka przemysłowa');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('3', 'Wydział Chemiczny', seq_kierunek_id.NEXTVAL, 'Inżynieria chemiczna i procesowa');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('3', 'Wydział Chemiczny', seq_kierunek_id.NEXTVAL, 'Technologia chemiczna');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('3', 'Wydział Chemiczny', seq_kierunek_id.NEXTVAL, 'Chemia i inżynieria materiałów');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('3', 'Wydział Chemiczny', seq_kierunek_id.NEXTVAL, 'Inżynieria materiałowa');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('4', 'Wydział Informatyki i Telekomunikacji', seq_kierunek_id.NEXTVAL, 'Cyberbezpieczeństwo');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('4', 'Wydział Informatyki i Telekomunikacji', seq_kierunek_id.NEXTVAL, 'Informatyka algorytmiczna');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('4', 'Wydział Informatyki i Telekomunikacji', seq_kierunek_id.NEXTVAL, 'Informatyka stosowana');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('4', 'Wydział Informatyki i Telekomunikacji', seq_kierunek_id.NEXTVAL, 'Inżynieria systemów');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('4', 'Wydział Informatyki i Telekomunikacji', seq_kierunek_id.NEXTVAL, 'Informatyczne systemy automatyki');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('4', 'Wydział Informatyki i Telekomunikacji', seq_kierunek_id.NEXTVAL, 'Informatyka techniczna');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('4', 'Wydział Informatyki i Telekomunikacji', seq_kierunek_id.NEXTVAL, 'Teleinformatyka');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('4', 'Wydział Informatyki i Telekomunikacji', seq_kierunek_id.NEXTVAL, 'Telekomunikacja');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('5', 'Wydział Elektroniki', seq_kierunek_id.NEXTVAL, 'Automatyka i robotyka');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('5', 'Wydział Elektroniki', seq_kierunek_id.NEXTVAL, 'Electronic and Computer Engineering');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('5', 'Wydział Elektroniki', seq_kierunek_id.NEXTVAL, 'Elektronika');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('5', 'Wydział Elektroniki', seq_kierunek_id.NEXTVAL, 'Elektronika i telekomunikacja');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('5', 'Wydział Elektroniki', seq_kierunek_id.NEXTVAL, 'Inteligentna elektronika');

INSERT INTO uczelnia (wydzial_id, nazwa_wydzialu, kierunek_id, nazwa_kierunku)
VALUES ('5', 'Wydział Elektroniki', seq_kierunek_id.NEXTVAL, 'Inżynieria mikrosystemów mechatronicznych');


/*********************************************************************/
/*dodanie danych do tabeli projekty*/
INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'BEST IT Festival', 'zewnętrzny', 'A', '20000');

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'European BEST Engineering Competition', 'zewnętrzny', 'A', '7000');

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'BEST Career Week', 'zewnętrzny', 'A', NULL);

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'General Assembly', 'wewnętrzny', 'A', NULL);

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'BEST Symposium on Education', 'zewnętrzny', 'A', NULL);

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'BEST Course', 'zewnętrzny', 'A', '30000');

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'Trainshop', 'wewnętrzny', 'A', NULL);

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'BEST Hacks', 'zewnętrzny', 'A', NULL);

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'Inżynieria Kultury', 'zewnętrzny', 'A', NULL);

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'Rekrutacja', 'zewnętrzny', 'B', '0');

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'Motivational Weekend', 'wewnętrzny', 'B', NULL);

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'Wigilia', 'wewnętrzny', 'C', '200');

INSERT INTO projekty (projekt_id, nazwa_projektu, typ_projektu, klasa_projektu, budzet_projektu) 
VALUES (seq_projekt_id.NEXTVAL, 'Urodziny', 'wewnętrzny', 'C', NULL);


/*********************************************************************/
/*dodanie danych do tabeli funkcje*/
INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','1');

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','2'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','3'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','4'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','5'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','6'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','7'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','8'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','9'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Koordynator główny','10'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('PR Media','2'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('PR Content','2'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('FR','2'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('FR Barter','2'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('TR','2'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Logistyk','2'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('PR','3'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Grafik','3'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('FR','3'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('CR','3'); 

INSERT INTO funkcje (nazwa_funkcji, projekt_id) 
VALUES ('Logistyk','3');


/*********************************************************************/
/*dodanie danych do tabeli czlonkowie*/
INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('200123','Adam', 'Kowalski', 'M', '1', '1', '1', 'Koordynator główny');

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('200243','Ala', 'Żyła', 'K', '4', '16', NULL, NULL);

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('223243','Ola', 'Małysz', 'K', '4', '15', '2', 'PR Media');

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('227843','Beata', 'Stoch', 'K', '4', '15', '3', 'Grafik');

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('223443','Cecylia', 'Świątek', 'K', '2', '3', '2', 'FR');

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('224243','Danuta', 'Krychowiak', 'K', '3', '5', '2', 'TR');

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('227824','Bartosz', 'Kubacki', 'M', '5', '20', '2', 'Koordynator główny');

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('265343','Cezary', 'Zniszczoł', 'M', '5', '20', '10', 'Koordynator główny');

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('243843','Damian', 'Wąsek', 'M', '5', '20', '3', 'CR');

INSERT INTO czlonkowie (numer_indeksu, imie, nazwisko, plec, wydzial_id, kierunek_id, projekt_id, nazwa_funkcji) 
VALUES ('213843','Eryk', 'Juroszek', 'M', '1', '2', '2', 'PR Content');


/*********************************************************************/
/*dodanie danych do tabeli edycje_projektow*/
INSERT INTO edycje_projektow (projekt_id, rok_projektu, numer_indeksu_koordynatora, absolutorium) 
VALUES ('1','2023', '200123', 'T');

INSERT INTO edycje_projektow (projekt_id, rok_projektu, numer_indeksu_koordynatora, absolutorium) 
VALUES ('1','2022', '200243', 'N');

INSERT INTO edycje_projektow (projekt_id, rok_projektu, numer_indeksu_koordynatora, absolutorium) 
VALUES ('1','2021', '223243', 'T');

INSERT INTO edycje_projektow (projekt_id, rok_projektu, numer_indeksu_koordynatora, absolutorium) 
VALUES ('3','2019', '200243', 'N');

INSERT INTO edycje_projektow (projekt_id, rok_projektu, numer_indeksu_koordynatora, absolutorium) 
VALUES ('2','2018', '200243', 'T');

INSERT INTO edycje_projektow (projekt_id, rok_projektu, numer_indeksu_koordynatora, absolutorium) 
VALUES ('7','2017', '243843', 'N');

INSERT INTO edycje_projektow (projekt_id, rok_projektu, numer_indeksu_koordynatora, absolutorium) 
VALUES ('7','2018', '224243', 'T');

INSERT INTO edycje_projektow (projekt_id, rok_projektu, numer_indeksu_koordynatora, absolutorium) 
VALUES ('11','2020', '224243', 'T');

/*********************************************************************/
/*dodanie danych do tabeli grupy robocze */
INSERT INTO grupy_robocze (nazwa_grupy_roboczej, numer_indeksu_koordynatora) 
VALUES ('LG','200123');

INSERT INTO grupy_robocze (nazwa_grupy_roboczej, numer_indeksu_koordynatora) 
VALUES ('IT','265343');

INSERT INTO grupy_robocze (nazwa_grupy_roboczej, numer_indeksu_koordynatora) 
VALUES ('KM', NULL);

INSERT INTO grupy_robocze (nazwa_grupy_roboczej, numer_indeksu_koordynatora) 
VALUES ('PR','227824');

INSERT INTO grupy_robocze (nazwa_grupy_roboczej, numer_indeksu_koordynatora) 
VALUES ('FR','200123');

INSERT INTO grupy_robocze (nazwa_grupy_roboczej, numer_indeksu_koordynatora) 
VALUES ('HR','200243');

                       
/*********************************************************************/
/*dodanie danych do tabeli grupy robocze czlonkowie*/
INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('PR','200123');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('FR','200123');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('LG','200123');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('IT','200123');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('IT','200243');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('HR','200243');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('HR','223243');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('PR','223243');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('PR','224243');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('PR','227824');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('PR','265343');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('FR','265343');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('IT','265343');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('IT','243843');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('LG','243843');

INSERT INTO grupy_robocze_czlonkowie (nazwa_grupy_roboczej, numer_indeksu) 
VALUES ('LG','213843');


/*********************************************************************/
/*dodanie danych do tabeli zmiany statusowe*/
INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('200123', 'full', TO_DATE('2019-11-01','YYYY-MM-DD'), TO_DATE('2020-09-30','YYYY-MM-DD'), TO_DATE('2021-01-06','YYYY-MM-DD'),NULL, NULL);                        

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('200243', 'alumn', TO_DATE('2018-11-01','YYYY-MM-DD'), TO_DATE('2020-01-30','YYYY-MM-DD'), TO_DATE('2020-05-05','YYYY-MM-DD'),TO_DATE('2023-03-01','YYYY-MM-DD'), NULL);

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('223243', 'alumn', TO_DATE('2018-03-05','YYYY-MM-DD'), TO_DATE('2019-09-20','YYYY-MM-DD'), TO_DATE('2018-05-05','YYYY-MM-DD'),TO_DATE('2022-06-01','YYYY-MM-DD'), NULL);

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('227843', 'observer', TO_DATE('2023-04-01','YYYY-MM-DD'), NULL, NULL, NULL, NULL);

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('223443', 'observer', TO_DATE('2023-04-01','YYYY-MM-DD'), NULL, NULL, NULL, NULL);

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('224243', 'baby', TO_DATE('2022-03-05','YYYY-MM-DD'), TO_DATE('2023-01-01','YYYY-MM-DD'), NULL, NULL, NULL);

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('227824', 'full', TO_DATE('2020-04-25','YYYY-MM-DD'), TO_DATE('2020-10-12','YYYY-MM-DD'), TO_DATE('2021-05-30','YYYY-MM-DD'), NULL, NULL);

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('265343', 'friend', TO_DATE('2020-04-25','YYYY-MM-DD'), TO_DATE('2020-12-12','YYYY-MM-DD'), NULL, NULL, TO_DATE('2022-02-10','YYYY-MM-DD'));

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('243843', 'full', TO_DATE('2022-10-10','YYYY-MM-DD'), TO_DATE('2023-02-02','YYYY-MM-DD'), TO_DATE('2023-06-01','YYYY-MM-DD'), NULL, NULL);

INSERT INTO zmiany_statusowe (numer_indeksu, status_czlonka, data_dolaczenia, data_baby, data_full, data_alumn, data_friend) 
VALUES ('213843', 'baby', TO_DATE('2022-10-09','YYYY-MM-DD'), TO_DATE('2023-03-20','YYYY-MM-DD'), NULL, NULL, NULL);


/*********************************************************************/
/*dodanie danych do tabeli mentorzy*/
/*********************************************************************/
/*dodanie danych do tabeli mentorzy*/
INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('200123', '200243'); 

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('200243', '223243');

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('223243', NULL);  

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('227843', '223243');

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('223443', '200123');

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('224243', '227824');

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('227824', '200243');

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('265343', '200243');

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('243843', '223243');

INSERT INTO mentorzy (numer_indeksu, numer_indeksu_mentora) 
VALUES ('213843', '200123');