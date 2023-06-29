CREATE TABLE uczelnia(
                        wydzial_id NUMBER NOT NULL,
                        nazwa_wydzialu VARCHAR2(50) NOT NULL,
                        kierunek_id NUMBER NOT NULL,
                        nazwa_kierunku VARCHAR2(50) NOT NULL,
                        CONSTRAINT pk_uczelnia PRIMARY KEY (wydzial_id, kierunek_id)
                        );
                        
CREATE TABLE projekty(
                        projekt_id NUMBER NOT NULL,
                        nazwa_projektu VARCHAR2(40) NOT NULL,
                        typ_projektu VARCHAR2(11) NOT NULL, CHECK (typ_projektu IN ('wewnętrzny', 'zewnętrzny')),
                        klasa_projektu CHAR(1) NOT NULL, CHECK (klasa_projektu IN ('A', 'B', 'C')),
                        budzet_projektu NUMBER NULL,
                        PRIMARY KEY (projekt_id)
                        );
                        
CREATE TABLE funkcje(
                        nazwa_funkcji VARCHAR2(20) NOT NULL,
                        projekt_id NUMBER NOT NULL,
                        CONSTRAINT pk_funkcje PRIMARY KEY (nazwa_funkcji, projekt_id),
                        CONSTRAINT fk_funkcje_projekty FOREIGN KEY (projekt_id) REFERENCES projekty(projekt_id)
                        );

CREATE TABLE czlonkowie(
                        numer_indeksu NUMERIC(6) NOT NULL,
                        imie VARCHAR2(30) NOT NULL,
                        nazwisko VARCHAR2(50) NOT NULL,
                        plec CHAR(1) NULL, CHECK (Plec IN ('M', 'K')),
                        wydzial_id NUMBER NOT NULL,
                        kierunek_id NUMBER NOT NULL,
                        projekt_id NUMBER NULL,
                        nazwa_funkcji VARCHAR2(20) NULL,
                        PRIMARY KEY (numer_indeksu),
                        CONSTRAINT fk_czlonkowie_uczelnia FOREIGN KEY (wydzial_id, kierunek_id) REFERENCES uczelnia(wydzial_id, kierunek_id),
                        CONSTRAINT fk_czlonkowie_funkcje FOREIGN KEY (nazwa_funkcji, projekt_id) REFERENCES funkcje(nazwa_funkcji, projekt_id)
                        );

CREATE TABLE edycje_projektow(
                        projekt_id NUMBER NOT NULL,
                        rok_projektu NUMBER(4) NOT NULL, CHECK (rok_projektu BETWEEN 2009 AND 2023),
                        numer_indeksu_koordynatora NUMERIC(6) NULL,
                        absolutorium CHAR(1) NULL, CHECK (absolutorium IN ('T', 'N')),
                        CONSTRAINT pk_edycje_projektow PRIMARY KEY (projekt_id, rok_projektu),
                        CONSTRAINT fk_edycje_projektow_projekty FOREIGN KEY (projekt_id) REFERENCES projekty(projekt_id),
                        CONSTRAINT fk_edycje_projektow_czlonkowie FOREIGN KEY (numer_indeksu_koordynatora) REFERENCES czlonkowie(numer_indeksu)
                        );
                        
 CREATE TABLE grupy_robocze_czlonkowie(
						nazwa_grupy_roboczej VARCHAR2(10) NOT NULL,
						numer_indeksu NUMERIC(6) NOT NULL,
                        CONSTRAINT pk_grupy_robocze_czlonkowie PRIMARY KEY (nazwa_grupy_roboczej, numer_indeksu),
						CONSTRAINT fk_grupy_robocze_czlonkowie_czlonkowie FOREIGN KEY (numer_indeksu) REFERENCES czlonkowie(numer_indeksu)
						);     
                        
CREATE TABLE grupy_robocze(
                        nazwa_grupy_roboczej VARCHAR2(10) NOT NULL,
                        ilosc_czlonkow NUMBER NULL,
                        numer_indeksu_koordynatora NUMERIC(6) NULL,
                        PRIMARY KEY (nazwa_grupy_roboczej),
                        CONSTRAINT fk_grupy_robocze_czlonkowie FOREIGN KEY (numer_indeksu_koordynatora) REFERENCES czlonkowie(numer_indeksu)
                        );

CREATE TABLE zmiany_statusowe(
                        numer_indeksu NUMERIC(6) NOT NULL,
                        status_czlonka VARCHAR2(8) NOT NULL, CHECK (status_czlonka IN ('observer', 'baby', 'full', 'alumn', 'friend')),
                        data_dolaczenia DATE NOT NULL,
                        data_baby DATE NULL,
                        data_full DATE NULL,
                        data_alumn DATE NULL,
                        data_friend DATE NULL,
                        PRIMARY KEY (numer_indeksu),
                        CONSTRAINT fk_zmiany_statusowe_czlonkowie FOREIGN KEY (numer_indeksu) REFERENCES czlonkowie(numer_indeksu)
                        );

CREATE TABLE mentorzy(
                        numer_indeksu NUMERIC(6) NOT NULL,
                        numer_indeksu_mentora NUMERIC(6) NULL,
                        PRIMARY KEY (numer_indeksu),
                        CONSTRAINT fk_mentorzy_czlonkowie FOREIGN KEY (numer_indeksu_mentora) REFERENCES czlonkowie(numer_indeksu)
                        );