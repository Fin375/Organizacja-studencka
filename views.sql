/* widok wyświetli imiona i nazwiska osób (lub jednej osoby), która mentoruje największą liczbę członków */
CREATE VIEW mentorowani_czlonkowie AS
SELECT c.imie, c.nazwisko
FROM czlonkowie c
JOIN mentorzy m ON c.numer_indeksu = m.numer_indeksu_mentora
GROUP BY c.imie, c.nazwisko
HAVING COUNT(*) = (
  SELECT MAX(count_mentor)
  FROM (
    SELECT numer_indeksu_mentora, COUNT(*) AS count_mentor
    FROM mentorzy
    GROUP BY numer_indeksu_mentora
  ) subquery
);

/* widok wyświetli czlonkow o statusie alumna w odwrotnej kolejności otrzymania tego statusu */
CREATE VIEW alumn_czlonkowie AS
SELECT c.imie, c.nazwisko
FROM czlonkowie c
JOIN zmiany_statusowe z ON c.numer_indeksu = z.numer_indeksu
WHERE z.status_czlonka = 'alumn'
ORDER BY z.data_alumn DESC;

/* widok wyświetli nazwy wydziałów i kierunków, na których studiują członkowie grupy PR-owej */
CREATE VIEW czlonkowie_grupy_robocze AS
SELECT u.nazwa_wydzialu, u.nazwa_kierunku
FROM uczelnia u
JOIN czlonkowie c ON u.wydzial_id = c.wydzial_id AND u.kierunek_id = c.kierunek_id
JOIN grupy_robocze_czlonkowie gc ON c.numer_indeksu = gc.numer_indeksu
JOIN grupy_robocze g ON gc.nazwa_grupy_roboczej = g.nazwa_grupy_roboczej
WHERE g.nazwa_grupy_roboczej = 'PR';