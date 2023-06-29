CREATE OR REPLACE TRIGGER tr_grupy_robocze_count
BEFORE INSERT OR UPDATE OR DELETE ON grupy_robocze_czlonkowie
FOR EACH ROW
BEGIN
  /* aktualizacja ilosc_czlonkow na podstawie liczby rekordów w grupy_robocze_czlonkowie */
  UPDATE grupy_robocze
  SET ilosc_czlonkow = (SELECT COUNT(*)
                       FROM grupy_robocze_czlonkowie
                       WHERE nazwa_grupy_roboczej = :NEW.nazwa_grupy_roboczej)
  WHERE nazwa_grupy_roboczej = :NEW.nazwa_grupy_roboczej;
END;
/