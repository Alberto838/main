CREATE TABLE uczniowie (id_ucznia INT PRIMARY KEY NOT NULL AUTO_INCREMENT, imie VARCHAR(45), nazwisko VARCHAR(45), PESEL VARCHAR(11) UNIQUE, jezyk INT, grupa INT);
CREATE TABLE jezyk (id_jezyka INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nazwa VARCHAR(45), poziom VARCHAR(2));
CREATE TABLE nauczyciele (id_nauczyciela INT PRIMARY KEY NOT NULL AUTO_INCREMENT, imie VARCHAR(45), nazwisko VARCHAR(45), PESEL VARCHAR(11) UNIQUE, zarobki INT, jezyk INT);
CREATE TABLE podreczniki (id_podrecznika INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nazwa VARCHAR(45), cena INT, jezyk INT);
CREATE TABLE platnosci (id_platnosci INT PRIMARY KEY NOT NULL AUTO_INCREMENT, oplata_calkowita INT, uczen INT);
CREATE TABLE grupy (id_grupy INT PRIMARY KEY NOT NULL AUTO_INCREMENT, sala INT);
CREATE TABLE sale (id_sali INT PRIMARY KEY NOT NULL AUTO_INCREMENT, nr_sali INT);


INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Krystian', 'Nowak', '12345678900', '1', '1');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Oktawia', 'Borkowska', '12345678901', '5', '5');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Marcelina', 'Walczak', '12345678902', '2', '2');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Leonardo', 'Sawicki', '12345678903', '5', '5');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Józefa', 'Kucharska', '12345678904', '3', '3');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Malwina', 'Duda', '12345678905', '3', '3');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Bronisław', 'Wojciechowski', '12345678906', '1', '1');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Edyta', 'Krawczyk', '12345678907', '1', '1');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Marian', 'Wójcik', '12345678908', '1', '1');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Gracjan', 'Makowski', '12345678909', '4', '4');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Cecylia', 'Jankowska', '12345678910', '2', '2');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Marlena', 'Makowska', '12345678911', '4', '4');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Amadeusz', 'Maciejewski', '12345678912', '5', '5');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Roman', 'Pawlak', '12345678913', '2', '2');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Karolina', 'Szulc', '12345678914', '3', '3');
INSERT INTO uczniowie (imie, nazwisko, PESEL, jezyk, grupa) VALUES ('Przemysław', 'Szewczyk', '12345678915', '3', '3');


INSERT INTO jezyk (nazwa, poziom) VALUES ('japonski', 'N5');
INSERT INTO jezyk (nazwa, poziom) VALUES ('japonski', 'N4');
INSERT INTO jezyk (nazwa, poziom) VALUES ('japonski', 'N3');
INSERT INTO jezyk (nazwa, poziom) VALUES ('japonski', 'N2');
INSERT INTO jezyk (nazwa, poziom) VALUES ('japonski', 'N1');


INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (1120, '1');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (900, '2');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (840, '3');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (900, '4');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (840, '5');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (950, '6');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (900, '7');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (870, '8');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (700, '9');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (840, '10');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (1120, '11');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (900, '12');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (1120, '13');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (900, '14');
INSERT INTO platnosci (oplata_calkowita, uczen) VALUES (840, '15');


INSERT INTO grupy (sala) VALUES ('1');
INSERT INTO grupy (sala) VALUES ('2');
INSERT INTO grupy (sala) VALUES ('3');
INSERT INTO grupy (sala) VALUES ('4');
INSERT INTO grupy (sala) VALUES ('5');


INSERT INTO nauczyciele (imie, nazwisko, PESEL, zarobki, jezyk) VALUES ('Sylwia', 'Szymczak', '12345678930', 6750, 5);
INSERT INTO nauczyciele (imie, nazwisko, PESEL, zarobki, jezyk) VALUES ('Aiko', 'Ishiguro', '12345678931', 7359, 5);
INSERT INTO nauczyciele (imie, nazwisko, PESEL, zarobki, jezyk) VALUES ('Aniela', 'Kaźmierczak', '12345678932', 5276, 5);
INSERT INTO nauczyciele (imie, nazwisko, PESEL, zarobki, jezyk) VALUES ('Hikaru', 'Higoshi', '12345678933', 8425, 5);
INSERT INTO nauczyciele (imie, nazwisko, PESEL, zarobki, jezyk) VALUES ('Jakub', 'Kowalczyk', '12345678934', 5533, 5);


INSERT INTO podreczniki (nazwa, cena, jezyk) VALUES ('Japonski krok po kroku N5', 40, '1');
INSERT INTO podreczniki (nazwa, cena, jezyk) VALUES ('Japonski krok po kroku N4', 40, '2');
INSERT INTO podreczniki (nazwa, cena, jezyk) VALUES ('Japonski dla zaawansowanych N3', 50, '3');
INSERT INTO podreczniki (nazwa, cena, jezyk) VALUES ('Japonski dla zaawansowanych N2', 50, '4');
INSERT INTO podreczniki (nazwa, cena, jezyk) VALUES ('Rinna no Nihongo N1', 99, '5');


INSERT INTO sale (nr_sali) VALUES (1);
INSERT INTO sale (nr_sali) VALUES (2);
INSERT INTO sale (nr_sali) VALUES (3);
INSERT INTO sale (nr_sali) VALUES (4);
INSERT INTO sale (nr_sali) VALUES (5);


ALTER TABLE uczniowie ADD FOREIGN KEY (jezyk) REFERENCES jezyk(id_jezyka);
ALTER TABLE uczniowie ADD FOREIGN KEY (grupa) REFERENCES grupy(id_grupy);
ALTER TABLE nauczyciele ADD FOREIGN KEY (jezyk) REFERENCES jezyk(id_jezyka);
ALTER TABLE podreczniki ADD FOREIGN KEY (jezyk) REFERENCES jezyk(id_jezyka);
ALTER TABLE platnosci ADD FOREIGN KEY (uczen) REFERENCES uczniowie(id_ucznia);
ALTER TABLE grupy ADD FOREIGN KEY (sala) REFERENCES sale(id_sali);
