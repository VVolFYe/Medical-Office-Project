-- Clear Old Data
DELETE FROM cbReteta;
DELETE FROM cbProgramare;
DELETE FROM cbMedic;
DELETE FROM cbSpecialitate;
DELETE FROM cbGrad;

-- Specialitati
INSERT INTO cbSpecialitate (codSpec, denumire, coefPlata) VALUES ('gastro', 'gastroenterologie', 1.40);
INSERT INTO cbSpecialitate (codSpec, denumire, coefPlata) VALUES ('cardio', 'cardiologie', 1.60);
INSERT INTO cbSpecialitate (codSpec, denumire, coefPlata) VALUES ('derma', 'dermatologie', 1.20);
INSERT INTO cbSpecialitate (codSpec, denumire, coefPlata) VALUES ('neuro', 'neurologie', 1.80);

-- Grade
INSERT INTO cbGrad (codGrad, denumire, tarif) VALUES ('R', 'rezident', 80);
INSERT INTO cbGrad (codGrad, denumire, tarif) VALUES ('S', 'specialist', 120);
INSERT INTO cbGrad (codGrad, denumire, tarif) VALUES ('P', 'primar', 160);

-- Medici
INSERT INTO cbMedic (medID, nume, codSpec, codGrad) VALUES ('M001', 'Ionescu Andrei', 'cardio', 'P');
INSERT INTO cbMedic (medID, nume, codSpec, codGrad) VALUES ('M002', 'Popa Maria', 'derma', 'S');
INSERT INTO cbMedic (medID, nume, codSpec, codGrad) VALUES ('M003', 'Dumitrescu Vlad', 'neuro', 'P');
INSERT INTO cbMedic (medID, nume, codSpec, codGrad) VALUES ('M004', 'Grigore Alina', 'gastro', 'S');
INSERT INTO cbMedic (medID, nume, codSpec, codGrad) VALUES ('M005', 'Marinescu Ioana', 'cardio', 'S');
INSERT INTO cbMedic (medID, nume, codSpec, codGrad) VALUES ('M006', 'Stan Radu', 'derma', 'R');
INSERT INTO cbMedic (medID, nume, codSpec, codGrad) VALUES ('M007', 'Enache Sorin', 'gastro', 'P');
INSERT INTO cbMedic (medID, nume, codSpec, codGrad) VALUES ('M008', 'Toma Elena', 'neuro', 'R');

-- Programari
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1001, TO_DATE('10.04.2026', 'DD.MM.YYYY'), '5010101123456', 'Popescu Ion', 'M001', 'C101');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1002, TO_DATE('10.04.2026', 'DD.MM.YYYY'), '6020202123457', 'Ionescu Maria', 'M002', 'C102');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1003, TO_DATE('11.04.2026', 'DD.MM.YYYY'), '5030303123458', 'Dobre Alexandru', 'M003', 'C103');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1004, TO_DATE('11.04.2026', 'DD.MM.YYYY'), '6040404123459', 'Stan Elena', 'M004', 'C104');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1005, TO_DATE('12.04.2026', 'DD.MM.YYYY'), '5050505123460', 'Radu Mihai', 'M005', 'C105');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1006, TO_DATE('12.04.2026', 'DD.MM.YYYY'), '6060606123461', 'Tudor Ana', 'M006', 'C106');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1007, TO_DATE('13.04.2026', 'DD.MM.YYYY'), '5070707123462', 'Marin George', 'M007', 'C107');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1008, TO_DATE('13.04.2026', 'DD.MM.YYYY'), '6080808123463', 'Matei Ioana', 'M008', 'C108');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1009, TO_DATE('14.04.2026', 'DD.MM.YYYY'), '5010101123456', 'Popescu Ion', 'M004', 'C104');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1010, TO_DATE('14.04.2026', 'DD.MM.YYYY'), '6020202123457', 'Ionescu Maria', 'M001', 'C101');

INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1011, TO_DATE('15.04.2026', 'DD.MM.YYYY'), '5090909123464', 'Nistor Paul', 'M002', 'C102');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1012, TO_DATE('15.04.2026', 'DD.MM.YYYY'), '6101010123465', 'Dima Laura', 'M003', 'C103');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1013, TO_DATE('16.04.2026', 'DD.MM.YYYY'), '5111111123466', 'Voicu Stefan', 'M004', 'C104');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1014, TO_DATE('16.04.2026', 'DD.MM.YYYY'), '6121212123467', 'Petrescu Diana', 'M005', 'C105');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1015, TO_DATE('17.04.2026', 'DD.MM.YYYY'), '5130101123468', 'Ilie Robert', 'M006', 'C106');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1016, TO_DATE('17.04.2026', 'DD.MM.YYYY'), '6140202123469', 'Barbu Cristina', 'M007', 'C107');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1017, TO_DATE('18.04.2026', 'DD.MM.YYYY'), '5150303123470', 'Dragomir Victor', 'M008', 'C108');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1018, TO_DATE('18.04.2026', 'DD.MM.YYYY'), '6160404123471', 'Lazar Andreea', 'M001', 'C101');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1019, TO_DATE('19.04.2026', 'DD.MM.YYYY'), '5170505123472', 'Munteanu Calin', 'M002', 'C102');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1020, TO_DATE('19.04.2026', 'DD.MM.YYYY'), '6180606123473', 'Neagu Roxana', 'M003', 'C103');

INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1021, TO_DATE('20.04.2026', 'DD.MM.YYYY'), '5190707123474', 'Serban Alex', 'M004', 'C104');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1022, TO_DATE('20.04.2026', 'DD.MM.YYYY'), '6200808123475', 'Balan Oana', 'M005', 'C105');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1023, TO_DATE('21.04.2026', 'DD.MM.YYYY'), '5210909123476', 'Cristea Vlad', 'M006', 'C106');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1024, TO_DATE('21.04.2026', 'DD.MM.YYYY'), '6221010123477', 'Mocanu Irina', 'M007', 'C107');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1025, TO_DATE('22.04.2026', 'DD.MM.YYYY'), '5231111123478', 'Toma Cristian', 'M008', 'C108');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1026, TO_DATE('22.04.2026', 'DD.MM.YYYY'), '6241212123479', 'Gheorghe Simona', 'M001', 'C101');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1027, TO_DATE('23.04.2026', 'DD.MM.YYYY'), '5250101123480', 'Preda Adrian', 'M002', 'C102');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1028, TO_DATE('23.04.2026', 'DD.MM.YYYY'), '6260202123481', 'Vasilescu Alina', 'M003', 'C103');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1029, TO_DATE('24.04.2026', 'DD.MM.YYYY'), '5270303123482', 'Nedelcu Dan', 'M004', 'C104');
INSERT INTO cbProgramare (codPro, data, cnp, nume, medID, cabinet) VALUES (1030, TO_DATE('24.04.2026', 'DD.MM.YYYY'), '6280404123483', 'Florea Bianca', 'M005', 'C105');

-- Retete
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1001, 1, 'Aspenter', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1001, 2, 'Concor', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1002, 1, 'Aerius', '1x1', 10);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1002, 2, 'Advantan', '1x1', 7);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1003, 1, 'Milgamma', '2x1', 14);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1003, 2, 'Neurovert', '1x1', 10);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1004, 1, 'Fervex', '3x1', 6);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1004, 2, 'Strepsils', '4x1', 5);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1005, 1, 'Tertensif', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1005, 2, 'Prestarium', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1006, 1, 'Claritine', '1x1', 10);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1006, 2, 'Bepanthen', '2x1', 7);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1007, 1, 'Controloc', '1x1', 14);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1007, 2, 'No-Spa', '3x1', 5);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1008, 1, 'Betaserc', '2x1', 14);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1008, 2, 'Magne B6', '2x1', 20);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1009, 1, 'Fervex', '3x1', 6);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1009, 2, 'Omez', '1x1', 14);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1010, 1, 'Aspacardin', '2x1', 20);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1010, 2, 'Nebilet', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1011, 1, 'Zyrtec', '1x1', 10);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1011, 2, 'Elocom', '1x1', 7);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1012, 1, 'Nurofen', '2x1', 5);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1012, 2, 'Mydocalm', '2x1', 10);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1013, 1, 'Debridat', '3x1', 7);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1013, 2, 'Espumisan', '3x1', 7);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1014, 1, 'Enalapril', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1014, 2, 'Sortis', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1015, 1, 'Baneocin', '2x1', 7);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1015, 2, 'Xyzal', '1x1', 10);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1016, 1, 'Panzcebil', '2x1', 14);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1016, 2, 'Triferment', '3x1', 7);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1017, 1, 'Cerebrolysin', '1x1', 10);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1017, 2, 'Tanakan', '2x1', 20);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1018, 1, 'Cardura', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1018, 2, 'Aspenter', '1x1', 30);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1019, 1, 'Aerius', '1x1', 10);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1019, 2, 'Dermovate', '1x1', 7);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1020, 1, 'Magne B6', '2x1', 20);
INSERT INTO cbReteta (codPro, nrItem, medicament, doza_zi, durata_zile) VALUES (1020, 2, 'Betaserc', '2x1', 14);

COMMIT;