INSERT INTO "liga"("id", "naziv", "oznaka")
VALUES(nextval('liga_seq'), 'Srpska liga Zapad', 'FSRZS');
INSERT INTO "liga"("id", "naziv", "oznaka")
VALUES(nextval('liga_seq'), 'Srpska liga Vojvodina', 'FSRSV');
INSERT INTO "liga"("id", "naziv", "oznaka")
VALUES(nextval('liga_seq'), 'Srpska liga Istok', 'FSRIS');
INSERT INTO "liga"("id", "naziv", "oznaka")
VALUES(nextval('liga_seq'), 'Srpska liga Beograd', 'FSRSB');

INSERT INTO "nacionalnost"("id", "naziv", "skracenica")
VALUES(nextval('nacionalnost_seq'), 'Srbija', 'SRB');
INSERT INTO "nacionalnost"("id", "naziv", "skracenica")
VALUES(nextval('nacionalnost_seq'), 'Bosna i Hercegovina', 'BIH');
INSERT INTO "nacionalnost"("id", "naziv", "skracenica")
VALUES(nextval('nacionalnost_seq'), 'Crna Gora', 'MNE');
INSERT INTO "nacionalnost"("id", "naziv", "skracenica")
VALUES(nextval('nacionalnost_seq'), 'Nemačka', 'D');

INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Borac 1926', to_date('1.05.1926.', 'dd.mm.yyyy.'), 'Čačak', 1);
INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Sloga Požega', to_date('01.01.1920.', 'dd.mm.yyyy.'), 'Požega', 1);
INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Budućnost Krušik 2014', to_date('03.03.1919.', 'dd.mm.yyyy.'), 'Valjevo', 1);

INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Železničar Pančevo', to_date('01.01.1947.', 'dd.mm.yyyy.'), 'Pančevo', 2);
INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Bačka 1901', to_date('03.08.1901.', 'dd.mm.yyyy.'), 'Subotica', 2);
INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Radnički Zrenjanin', to_date('11.05.1919.', 'dd.mm.yyyy.'), 'Zrenjanin', 2);

INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'GFK Jagodina', to_date('01.01.1967.', 'dd.mm.yyyy.'), 'Jagodina', 3);
INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Budućnost', to_date('01.01.1945.', 'dd.mm.yyyy.'), 'Popovac', 3);
INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Sinđelić Niš', to_date('01.01.1918.', 'dd.mm.yyyy.'), 'Niš', 3);

INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK IMT', to_date('01.01.1953.', 'dd.mm.yyyy.'), 'Beograd', 4);
INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Zvezdara', to_date('01.01.1951.', 'dd.mm.yyyy.'), 'Beograd', 4);
INSERT INTO "tim"("id", "naziv", "osnovan", "sediste", "liga")
VALUES(nextval('tim_seq'), 'FK Sinđelić Niš', to_date('01.01.1918.', 'dd.mm.yyyy.'), 'Niš', 4);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Nikola', 'Tasić', '19/19', to_date('17.01.1992.', 'dd.mm.yyyy.'), 1, 1);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Pavle', 'Obradović', '22/19', to_date('4.07.2001.', 'dd.mm.yyyy.'), 1, 1);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Lazar', 'Obradović', '27/19', to_date('5.12.1992.', 'dd.mm.yyyy.'), 1, 1);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Tibor', 'Berak', '14/19', to_date('29.12.2000.', 'dd.mm.yyyy.'), 2, 1);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Petar', 'Glintić', '02/20', to_date('09.06.1992.', 'dd.mm.yyyy.'), 1, 2);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Lazar', 'Kalajanović', '17/20', to_date('25.08.1994.', 'dd.mm.yyyy.'), 1, 2);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Veljko', 'Plazinić', '17/20', to_date('15.10.1991.', 'dd.mm.yyyy.'), 1, 2);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Igor', 'Filipović', '11/20', to_date('17.04.1992.', 'dd.mm.yyyy.'), 1, 2);


INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Stefan', 'Ilić', '01/15', to_date('7.04.1995.', 'dd.mm.yyyy.'), 1, 3);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Ivan', 'Paunović', '04/15', to_date('17.06.1986.', 'dd.mm.yyyy.'), 1, 3);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Nemanja', 'Josipović', '04/15', to_date('10.02.1988.', 'dd.mm.yyyy.'), 1, 3);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Strahinja', 'Sofronić', '10/15', to_date('01.08.1997.', 'dd.mm.yyyy.'), 1, 3);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Georgije', 'Jankulov', '22/13', to_date('25.11.2001.', 'dd.mm.yyyy.'), 1, 4);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Vladimir', 'Mandić', '11/13', to_date('05.07.1987.', 'dd.mm.yyyy.'), 1, 4);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Lazar', 'Vladisavljević', '13/13', to_date('09.07.1992.', 'dd.mm.yyyy.'), 1, 4);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Denis', 'Ilić', '17/13', to_date('20.05.2000.', 'dd.mm.yyyy.'), 1, 4);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Davor', 'Rajkovac', '09/09', to_date('20.10.1990.', 'dd.mm.yyyy.'), 1, 5);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Luka', 'Bjelović', '08/09', to_date('11.04.2001.', 'dd.mm.yyyy.'), 1, 5);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Marko', 'Anđić', '25/09', to_date('14.12.1983.', 'dd.mm.yyyy.'), 1, 5);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Mateja', 'Nenadović', '14/09', to_date('14.07.2000.', 'dd.mm.yyyy.'), 1, 5);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Nemanja', 'Radović', '11/17', to_date('04.01.1997.', 'dd.mm.yyyy.'), 1, 6);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Miloš', 'Ranđelović', '14/17', to_date('18.09.2002.', 'dd.mm.yyyy.'), 1, 6);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Nikola', 'Krstinić', '18/17', to_date('16.08.1992.', 'dd.mm.yyyy.'), 2, 6);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Mehmed', 'Avdić', '7/17', to_date('14.05.1998.', 'dd.mm.yyyy.'), 3, 6);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Aleksa', 'Janjušević', '05/05', to_date('01.02.2000.', 'dd.mm.yyyy.'), 1, 7);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Danijel', 'Stamenković', '09/05', to_date('05.11.1999.', 'dd.mm.yyyy.'), 1, 7);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Miodrag', 'Maljković', '21/05', to_date('16.07.2001.', 'dd.mm.yyyy.'), 1, 7);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Nikola', 'Marinković', '14/05', to_date('20.04.1997.', 'dd.mm.yyyy.'), 1, 7);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Aleksandar', 'Cvetković', '11/24', to_date('19.11.1992.', 'dd.mm.yyyy.'), 1, 8);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Ivan', 'Jović', '24/24', to_date('29.04.1994.', 'dd.mm.yyyy.'), 1, 8);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Petar', 'Ristić', '03/24', to_date('29.03.2000.', 'dd.mm.yyyy.'), 1, 8);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Petar', 'Ikić', '13/24', to_date('19.04.1991.', 'dd.mm.yyyy.'), 1, 8);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Luka', 'Aresnović', '01/06', to_date('02.01.1999.', 'dd.mm.yyyy.'), 1, 9);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Miroslav', 'Trajković', '20/06', to_date('29.05.1996.', 'dd.mm.yyyy.'), 1, 9);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Aleksandar', 'Savić', '05/06', to_date('21.07.1995.', 'dd.mm.yyyy.'), 1, 9);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Mladen', 'Radenković', '14/06', to_date('26.07.1999.', 'dd.mm.yyyy.'), 1, 9);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Nikola', 'Crnobrnja', '11/01', to_date('23.01.1990.', 'dd.mm.yyyy.'), 1, 10);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Lazar', 'Vuković', '04/01', to_date('11.04.1998.', 'dd.mm.yyyy.'), 1, 10);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Nemanja', 'Marković', '18/01', to_date('06.08.1987.', 'dd.mm.yyyy.'), 1, 10);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Marko', 'Rakonjac', '07/01', to_date('25.04.2000.', 'dd.mm.yyyy.'), 3, 10);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Milan', 'Opačić', '18/11', to_date('23.06.1996.', 'dd.mm.yyyy.'), 1, 11);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Milan', 'Delević', '01/11', to_date('23.02.1998.', 'dd.mm.yyyy.'), 4, 11);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Nikola', 'Sarić', '05/11', to_date('10.07.1998.', 'dd.mm.yyyy.'), 1, 11);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Vukan', 'Madžgalj', '09/11', to_date('05.01.1993.', 'dd.mm.yyyy.'), 3, 11);

INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Vukašin', 'Vraneš', '01/08', to_date('22.07.1996.', 'dd.mm.yyyy.'), 1, 12);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Dejan', 'Jevtić', '10/08', to_date('23.03.1990.', 'dd.mm.yyyy.'), 1, 12);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Ivan', 'Lovrić', '04/08', to_date('01.11.1987.', 'dd.mm.yyyy.'), 1, 12);
INSERT INTO "igrac"("id", "ime", "prezime", "broj_reg", "datum_rodjenja", "nacionalnost", "tim")
VALUES(nextval('igrac_seq'), 'Vojislav', 'Nedeljković', '11/08', to_date('24.07.1999.', 'dd.mm.yyyy.'), 1, 12);



