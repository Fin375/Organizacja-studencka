CREATE INDEX id_rekrutacji
ON zmiany_statusowe(data_dolaczenia);

CREATE INDEX id_absolutorium_koordynatora
ON edycje_projektow(numer_indeksu_koordynatora, absolutorium);