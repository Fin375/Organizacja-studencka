/* jeden z członków organizacji zmienil kierunek studiow w obrebie tego samego wydzialu */
UPDATE czlonkowie
SET kierunek_id = '14'
WHERE numer_indeksu = '223243';

/* wyświetlenie imion i nazwisk wszystkich aktywnych członków (ze statusem observer, baby lub full)*/
SELECT cz.imie, cz.nazwisko
FROM czlonkowie cz
JOIN zmiany_statusowe zs ON cz.numer_indeksu = zs.numer_indeksu
WHERE zs.status_czlonka IN ('observer', 'baby', 'full');

/* wyświetlenie ilości osób o konkretnym statusie w kolejności rosnacej ilości członków*/
SELECT status_czlonka, COUNT(*) AS liczba_czlonkow
FROM zmiany_statusowe
GROUP BY status_czlonka
ORDER BY liczba_czlonkow;

/* wyświetlenie imion i nazwisk członków w kolejności ich daty dołączenia (lepsza efektywność zapytania dzięki stworzonemu indeksowi id_rekrutacji) */
SELECT cz.imie, cz.nazwisko, zs.data_dolaczenia
FROM czlonkowie cz
JOIN zmiany_statusowe zs ON cz.numer_indeksu = zs.numer_indeksu
ORDER BY zs.data_dolaczenia ASC;

/*wyświetlenine osób, które były koordynatorami projektów, wraz z id_projektu, który koordynowali i informacją o tym, czy otrzymali absolutorium (lepsza efektywność zapytania, dzięki stworzonemu indeksowi id_absolutorium_koordynatora) */
SELECT cz.imie, cz.nazwisko, ep.projekt_id, ep.absolutorium
FROM czlonkowie cz
JOIN edycje_projektow ep ON cz.numer_indeksu = ep.numer_indeksu_koordynatora;

/*wyświetlenie nr_indeksow, imiona i nazwiska osób należących do grupy IT*/
SELECT cz.imie, cz.nazwisko, cz.numer_indeksu
FROM czlonkowie cz
JOIN grupy_robocze_czlonkowie gr ON cz.numer_indeksu = gr.numer_indeksu
JOIN grupy_robocze g ON gr.nazwa_grupy_roboczej = g.nazwa_grupy_roboczej
WHERE g.nazwa_grupy_roboczej = 'IT';

/* wyświetlenie imion i nazwisk osob które są mentorami (bez powtarzania) wraz z ilością osób, których są mentorami. Posortowane po ilości osób, które mentorują (od największej) */
SELECT c.numer_indeksu, c.imie, c.nazwisko, COUNT(*) AS ilosc_osob
FROM czlonkowie c
JOIN mentorzy m ON c.numer_indeksu = m.numer_indeksu_mentora
GROUP BY c.numer_indeksu, c.imie, c.nazwisko
ORDER BY ilosc_osob DESC;

/* wyświetlenie imion i nazwisk wszystkich mężczyzn należących do organizacji w kolejności ich dołączenia do organizacji */
SELECT cz.imie, cz.nazwisko
FROM czlonkowie cz
JOIN zmiany_statusowe zs ON cz.numer_indeksu = zs.numer_indeksu
WHERE cz.plec = 'M'
ORDER BY zs.data_dolaczenia ASC;

/* wyświetlenie osób, które nie otrzymały absoltorium za projekt oraz nazwę tego projektu wraz z rokiem */
SELECT cz.imie, cz.nazwisko, p.nazwa_projektu, ep.rok_projektu
FROM czlonkowie cz
JOIN edycje_projektow ep ON cz.projekt_id = ep.projekt_id
JOIN projekty p ON ep.projekt_id = p.projekt_id
WHERE ep.absolutorium = 'N';

/* wyświetlenie nazw projektow wraz z ilością osób, ktore mają funkcje w danym projekcie */
SELECT p.nazwa_projektu, COUNT(DISTINCT cz.numer_indeksu) AS ilosc_osob
FROM projekty p
LEFT JOIN funkcje f ON p.projekt_id = f.projekt_id
LEFT JOIN czlonkowie cz ON f.nazwa_funkcji = cz.nazwa_funkcji AND f.projekt_id = cz.projekt_id
GROUP BY p.nazwa_projektu;

/* wyświetlenie ile jest funkcji, ktorych nikt nie pełni */
SELECT COUNT(*) AS liczba_funkcji_wolnych
FROM funkcje f
LEFT JOIN czlonkowie c ON f.nazwa_funkcji = c.nazwa_funkcji AND f.projekt_id = c.projekt_id
WHERE c.numer_indeksu IS NULL;

/* wyświetlenie nazwy wydziałów i kierunków, na których studiują członkowie wraz z ilością osób, ktore tam studiują. W kolejności od kierunków, na których jest najwięcej osób */
SELECT u.nazwa_wydzialu, u.nazwa_kierunku, COUNT(c.numer_indeksu) AS ilosc_osob
FROM uczelnia u
JOIN czlonkowie c ON u.wydzial_id = c.wydzial_id AND u.kierunek_id = c.kierunek_id
GROUP BY u.nazwa_wydzialu, u.nazwa_kierunku
ORDER BY ilosc_osob DESC;

/* wyświetlenie średniej ilości grup roboczych w której działają osoby o konkretnych statusach */
SELECT z.status_czlonka, ROUND(AVG(GRC.ilosc_grup),2) AS srednia_ilosc_grup
FROM zmiany_statusowe z
JOIN (
    SELECT numer_indeksu, COUNT(DISTINCT nazwa_grupy_roboczej) AS ilosc_grup
    FROM grupy_robocze_czlonkowie
    GROUP BY numer_indeksu
) GRC ON z.numer_indeksu = GRC.numer_indeksu
GROUP BY z.status_czlonka;

/* wyświetlenie nazwy projektów, które miały przynajmniej dwie edycje */
SELECT p.nazwa_projektu
FROM projekty p
JOIN edycje_projektow e ON p.projekt_id = e.projekt_id
GROUP BY p.nazwa_projektu
HAVING COUNT(DISTINCT e.rok_projektu) >= 2;

/* wyświetlenie klasy projektów, których łączny budżet przekracza 100 oraz sumę ich budżetów */
SELECT klasa_projektu, SUM(budzet_projektu) AS suma_budzetu
FROM projekty
GROUP BY klasa_projektu
HAVING SUM(budzet_projektu) > 100;

/* wyświetlenie nazwy grup roboczych oraz imion i nazwisk koordynatorów grup, w ktorych sa przynajmniej 3 osoby */
SELECT gr.nazwa_grupy_roboczej, cz.imie, cz.nazwisko
FROM grupy_robocze gr
JOIN czlonkowie cz ON gr.numer_indeksu_koordynatora = cz.numer_indeksu
WHERE gr.nazwa_grupy_roboczej IN (
    SELECT nazwa_grupy_roboczej
    FROM grupy_robocze_czlonkowie
    GROUP BY nazwa_grupy_roboczej
    HAVING COUNT(*) > 3
)
ORDER BY gr.nazwa_grupy_roboczej;

/* wyświetlenie imion i nazwisk osób, które studiują na wydziale, na którym studiuje najwięcej osób */
SELECT cz.imie, cz.nazwisko
FROM czlonkowie cz
JOIN (
  SELECT wydzial_id, COUNT(*) AS ilosc_osob
  FROM uczelnia
  GROUP BY wydzial_id
  ORDER BY COUNT(*) DESC
  FETCH FIRST 1 ROWS ONLY) 
u ON cz.wydzial_id = u.wydzial_id;













