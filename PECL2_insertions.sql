SET SQL_SAFE_UPDATES = 0;
SET foreign_key_checks = 0;
DELETE FROM musician;
DELETE FROM instrument;
DELETE FROM musicGroup;
DELETE FROM song;
DELETE FROM disc;
DELETE FROM concert;
DELETE FROM ticket;
DELETE FROM user;
DELETE FROM sells;
DELETE FROM givesOpinionDisc;
DELETE FROM givesOpinionConcert;
DELETE FROM buysDisc;
DELETE FROM buysTicket;
DELETE FROM plays;
DELETE FROM belongs;
DELETE FROM creates;
DELETE FROM performs;
DELETE FROM contains;
SET foreign_key_checks = 1; 
SET SQL_SAFE_UPDATES = 1;

#John Coltrane´s Band ID: 270
insert into musicGroup values (270, 'Jazz');

insert into musician values (06166844, 'John', 'Coltrane', 'W Hamlet Ave 28', 28345, 'Hamlet', 'North Carolina', 699278486, 932754923);
insert into musician values (05334423, 'Tommy', 'Flanagan', 'Grand Haven St', 48212, 'Detroit', 'Michigan', 642856023, 923435645);
insert into musician values (04628696, 'Wynton', 'Kelly', 'Bedford Ave', 11216, 'New York', 'New York', 694960342, 964012435);
insert into musician values (08484326, 'Paul', 'Chambers', 'Penn Ave', 15222, 'Pittsburgh', 'Pensilvania', 684245245, 908335928);
insert into musician values (05427651, 'Art', 'Taylor', 'Jefferson St', 07030, 'New York', 'New York', 648485012, 903847395);

insert into belongs values (06166844, 270);
insert into belongs values (05334423, 270);
insert into belongs values (04628696, 270);
insert into belongs values (08484326, 270);
insert into belongs values (05427651, 270);

insert into instrument values (06166844, 'Saxophone');
insert into instrument values (05334423, 'Piano');
insert into instrument values (04628696, 'Piano');
insert into instrument values (08484326, 'Double bass');
insert into instrument values (05427651, 'Drums');

insert into plays values (06166844, 'Saxophone');
insert into plays values (05334423, 'Piano');
insert into plays values (04628696, 'Piano');
insert into plays values (08484326, 'Double bass');
insert into plays values (05427651, 'Drums');

insert into disc values (2056, 'Giant Steps', '1960-01-27', 'Digital', 'mp3', '1024 MB',''); 
insert into creates values (270,2056);

insert into song values ('Giant Steps', '1960-01-27', 283);
insert into song values ('Cousin Mary', '1960-01-27', 345);
insert into song values ('Countdown','1960-01-27', 141);
insert into song values ('Spiral','1960-01-27', 356);
insert into song values ('Syeeda´s Song Flute','1960-01-27', 420);
insert into song values ('Naima','1960-01-27', 261);
insert into song values ('Mr. P.C.','1960-01-27', 417);

insert into contains values ('2056', 'Giant Steps');
insert into contains values ('2056', 'Cousin Mary');
insert into contains values ('2056', 'Countdown');
insert into contains values ('2056', 'Spiral');
insert into contains values ('2056', 'Syeeda´s Song Flute');
insert into contains values ('2056', 'Naima');
insert into contains values ('2056', 'Mr. P.C.');

insert into disc values (2984, 'A Love Supreme', '1964-12-09', 'Physical', '', '', 'CD');
insert into creates values (270,2984);

insert into song values ('Part 1: "Acknowledgment"', '1964-12-09', 463);
insert into song values ('Part 2: "Resolution"', '1964-12-09', 440);
insert into song values ('Part 3: "Pursuance"', '1964-12-09', 642);
insert into song values ('Part 4: "Psalm"', '1964-12-09', 425);

insert into contains values (2984, 'Part 1: "Acknowledgment"');
insert into contains values (2984, 'Part 2: "Resolution"');
insert into contains values (2984, 'Part 3: "Pursuance"');
insert into contains values (2984, 'Part 4: "Psalm"');

insert into concert values (3980, '2018-02-22', 'USA', 'San Francisco', 'Golden Park');
insert into performs values (270, 3980);
insert into ticket values (271, 65);
insert into ticket values (272, 65);
insert into ticket values (273, 65);
insert into sells values (3980 ,271);
insert into sells values (3980, 272);
insert into sells values (3980, 273);

insert into concert values (3990, '2019-12-03', 'Spain', 'Madrid', 'Parque del Retiro');
insert into performs values (270, 3990);
insert into ticket values (281, 110);
insert into ticket values (282, 110);
insert into ticket values (283, 110);
insert into sells values (3990 ,281);
insert into sells values (3990, 282);
insert into sells values (3990, 283);

#West Montgomery´s Band ID: 110
insert into musicGroup values (110, 'Jazz');
insert into musician values (05264892, 'Wes', 'Montgomery', 'Allison Ave', 46224, 'Indianapolis', 'Indiana', 638964274, 923754964);
insert into musician values (05672350, 'Percy', 'Heath', 'Wrightsville Ave', 28403, 'Willmington', 'North Carolina', 634346923, 960255970);
insert into musician values (09452841, 'Albert', 'Heath', 'Wrightsville Ave', 28403, 'Willmington', 'North Carolina', 634856231, 954734923);
insert into musician values (05392301, 'Jimmy', 'Heath', 'Wrightsville Ave', 28403, 'Willmington', 'North Carolina', 634753078, 923754923);

insert into belongs values (05392301, 110);
insert into belongs values (05264892, 110);
insert into belongs values (09452841, 110);
insert into belongs values (05672350, 110);

insert into instrument values (05264892, 'Guitar');
insert into instrument values (05672350, 'Bass');
insert into instrument values (09452841, 'Drums');
insert into instrument values (05392301, 'Saxophone');

insert into plays values (05264892, 'Guitar');
insert into plays values (05672350, 'Bass');
insert into plays values (09452841, 'Drums');
insert into plays values (05392301, 'Saxophone');

insert into disc values (1784, 'The Incredible Jazz Guitar of Wes Montgomery', '1960-01-28','Digital', 'WAV', '2048 MB', '');
insert into creates values (110, 1784);

insert into song values ('Airegin', '1960-01-28', 266);
insert into song values ('D-Natural Blues', '1960-01-28', 323);
insert into song values ('Polka Dots and Moonbeams', '1960-01-28', 284);
insert into song values ('Four on Six', '1960-01-28', 375);
insert into song values ('West Coast Blues', '1960-01-28', 446);
insert into song values ('In Your Own Sweet Way', '1960-01-28', 293);
insert into song values ('Mr. Walker', '1960-01-28', 273);
insert into song values ('Gone With the Wind', '1960-01-28', 384);

insert into contains values (1784, 'Airegin');
insert into contains values (1784, 'D-Natural Blues');
insert into contains values (1784, 'Polka Dots and Moonbeams');
insert into contains values (1784, 'Four on Six');
insert into contains values (1784, 'West Coast Blues');
insert into contains values (1784, 'In Your Own Sweet Way');
insert into contains values (1784, 'Mr. Walker');

insert into contains values (1784, 'Gone With the Wind');

insert into concert values (4470, '2017-02-03', 'France', 'Paris' , 'Le Jardin du Luxembourg');
insert into performs values (110, 4470);
insert into ticket values (160, 75);
insert into ticket values (161, 75);
insert into ticket values (162, 75);
insert into ticket values (173, 75);
insert into ticket values (184, 75);
insert into ticket values (185, 75);
insert into sells values (4470 ,160);
insert into sells values (4470, 161);
insert into sells values (4470, 162);

insert into concert values (4480, '2018-01-01', 'Spain', 'Madrid', 'Parque Rey Juan Carlos');
insert into performs values (110, 4480);
insert into ticket values (170, 110);
insert into ticket values (171, 110);
insert into ticket values (172, 110);
insert into sells values (4480 ,170);
insert into sells values (4480, 171);
insert into sells values (4480, 172);

insert into user values (02321423, 'Pedro', 'López', 'Perez', 'pedrolop@gmail.com', 210);
insert into buysTicket values (02321423, 271);
insert into buysTicket values (02321423, 281);
insert into buysTicket values (02321423, 160);
insert into buysTicket values (02321423, 170);
insert into givesOpinionConcert values (02321423, 3980, 7);
insert into givesOpinionConcert values (02321423, 3990, 9);
insert into givesOpinionConcert values (02321423, 4470, 6);
insert into givesOpinionConcert values (02321423, 4480, 10);
insert into buysDisc values (02321423, 2056);
insert into buysDisc values (02321423, 2984);
insert into buysDisc values (02321423, 1784);
insert into givesOpinionDisc values (02321423, 2056, 8);
insert into givesOpinionDisc values (02321423, 2984, 8);
insert into givesOpinionDisc values (02321423, 1784, 7);

insert into user values (05838743, 'Johnathan', 'Joestar', '', 'jojoReference@hotmail.com', 2203);

insert into user values (04737492, 'Peter', 'McDonald', 'Douglas', 'peterMcd@gmail.com', 122);
insert into buysTicket values (04737492, 171);
insert into givesOpinionConcert values (04737492, 3980, 7);
insert into givesOpinionDisc values (04737492, 2984, 8);
insert into givesOpinionDisc values (04737492, 1784, 5);

insert into user values (01238471, 'James', 'Miles', 'Johnson', 'jimmymj@yahoomail.com', 3);
insert into buysTicket values (01238471, 161);
insert into givesOpinionConcert values (01238471, 3990, 8);
insert into givesOpinionConcert values (01238471, 4470, 5);

insert into user values (04528483, 'Putin', 'Makarov', 'Vlasov', 'putinvlas@protonmail.com', 323);
insert into buysDisc values (04528483, 2984);
insert into givesOpinionDisc values (04528483, 2984, 7);

insert into user values (04917493, 'Pierre', 'Chauvet', 'Derroux', 'picharroux@gmail.com', 1002);
insert into buysDisc values (04917493, 2984);
insert into buysTicket values (04917493, 184);

insert into user values (03283295, 'Igor', 'Bogdanoff', 'Yourievitch', 'thebog@hotmail.com', 3023);
insert into buysTicket values (03283295, 162);
insert into givesOpinionConcert values (03283295, 4470, 7);

insert into user values (02374827, 'Heins', 'Christoffen', 'Schmidt', 'heincrhis@hotmail.com', 2304);
insert into buysTicket values (02374827, 282);
insert into givesOpinionConcert values (02374827, 3990, 6);

insert into user values (03284672, 'Hamza', 'Al Hajib', 'Burkashin', 'hamzahaji@gmail.com', 742);
insert into buysDisc values (03284672, 1784);

insert into user values (09373493, 'Yoko', 'Namakura', 'Furikawa', 'namasan@hotmail.com', 934);
insert into buysTicket values (02321423, 173);

#Reincidentes´s Band ID: 430
insert into musicGroup values (430, 'Rock');

insert into musician values (04136534, 'Kutxi', 'Romero', 'Etxebakar St 8', 31013, 'Berriozar', 'Navarra', 693275436, 933454323);
insert into musician values (07376429, 'Eduardo', 'Beaumont', 'Eunsasi St 14', 31013, 'Berriozar', 'Navarra', 694832128, 985426645);
insert into musician values (04949485, 'Cesar', 'Ramallo', 'Kaleberri St 9', 31013, 'Berriozar', 'Navarra', 694960342, 964012435);
insert into musician values (04949365, 'David', 'Diaz', 'Guipuzcoa Ave', 31013, 'Berriozar', 'Navarra', 684345269, 903927562);
insert into musician values (05453651, 'Alen', 'Ayerdi', 'Oianondoa St 4', 31013, 'Berriozar', 'Navarra', 648425012, 983243621);

insert into belongs values (04136534, 430);
insert into belongs values (07376429, 430);
insert into belongs values (04949485, 430);
insert into belongs values (04949365, 430);
insert into belongs values (05453651, 430);

insert into instrument values (04136534, 'Vocals');
insert into instrument values (07376429, 'Bass');
insert into instrument values (07376429, 'Vocals');
insert into instrument values (04949485, 'Electric guitar');
insert into instrument values (04949365, 'Electric guitar');
insert into instrument values (04949365, 'Acoustic guitar');
insert into instrument values (05453651, 'Drums');

insert into plays values (04136534, 'Vocals');
insert into plays values (07376429, 'Bass');
insert into plays values (07376429, 'Vocals');
insert into plays values (04949485, 'Electric guitar');
insert into plays values (04949365, 'Electric guitar');
insert into plays values (04949365, 'Acoustic guitar');
insert into plays values (05453651, 'Drums');

insert into disc values (3492, 'La patera', '1999-03-13', 'Physical', '', '' ,'lp'); 
insert into creates values (430,3492);

insert into song values ('Marea', '1999-03-13', 265);
insert into song values ('Ya lo dijo Camarón', '1999-03-13', 204);
insert into song values ('Trasegando', '1999-03-13', 167);
insert into song values ('No quiero ser un poeta', '1999-03-13', 213);
insert into song values ('Despellejo', '1999-03-13', 220);
insert into song values ('Quejíos', '1999-03-13', 282);
insert into song values ('Lija y terciopelo', '1999-03-13', 275);
insert into song values ('Como quiere tu abuelita', '1999-03-13', 307);

insert into contains values (3492, 'Marea');
insert into contains values (3492, 'Ya lo dijo Camarón');
insert into contains values (3492, 'Trasegando');
insert into contains values (3492, 'No quiero ser un poeta');
insert into contains values (3492, 'Despellejo');
insert into contains values (3492, 'Quejíos');
insert into contains values (3492, 'Lija y terciopelo');
insert into contains values (3492, 'Como quiere tu abuelita');

insert into disc values (6321, 'Revolcón', '2000-02-06', 'Physical', '', '', 'CD');
insert into creates values (430,6321);

insert into song values ('Part 1: "Barniz"', '2000-02-06', 234);
insert into song values ('Part 2: "Incandescente"', '2000-02-06', 250);
insert into song values ('Part 3: "Amor temporero"', '2000-02-06', 240);
insert into song values ('Part 4: "Corazón de mimbre"', '2000-02-06', 337);
insert into song values ('Part 5: "El perro verde"', '2000-02-06', 242);
insert into song values ('Part 6: "Duerme conmigo"', '2000-02-06', 220);
insert into song values ('Part 7: "Canto de tierra seca I"', '2000-02-06', 72);
insert into song values ('Part 8: " Canto de tierra seca II"', '2000-02-06', 206);
insert into song values ('Part 9: "Prisma tristeza"', '2000-02-06', 221);
insert into song values ('Part 10: "Mojama"', '2000-02-06', 235);
insert into song values ('Part 11: "Si viene la pestañi"', '2000-02-06', 221);

insert into contains values (6321, 'Part 1: "Barniz"');
insert into contains values (6321, 'Part 2: "Incandescente"');
insert into contains values (6321, 'Part 3: "Amor temporero"');
insert into contains values (6321, 'Part 4: "Corazón de mimbre"');
insert into contains values (6321, 'Part 5: "El perro verde"');
insert into contains values (6321, 'Part 6: "Duerme conmigo"');
insert into contains values (6321, 'Part 7: "Canto de tierra seca I"');
insert into contains values (6321, 'Part 8: " Canto de tierra seca II"');
insert into contains values (6321, 'Part 9: "Prisma tristeza"');
insert into contains values (6321, 'Part 10: "Mojama"');
insert into contains values (6321, 'Part 11: "Si viene la pestañi"');

insert into disc values (3229, 'En mi hambre mando yo', '2011-09-27', 'Physical', '', '', 'CD');
insert into creates values (430, 3229);

insert into song values ('Part 1: "Bienvenido al secadero"', '2011-09-27', 224);
insert into song values ('Part 2: "La majada"', '2011-09-27', 255);
insert into song values ('Part 3: "Sobran bueyes"', '2011-09-27', 251);
insert into song values ('Part 4: "El día que lluevan pianos"', '2011-09-27', 250);
insert into song values ('Part 5: "Canaleros"', '2011-09-27', 311);
insert into song values ('Part 6: "Ojalá me quieras libre"', '2011-09-27', 257);
insert into song values ('Part 7: "Ángeles del suelo"', '2011-09-27', 223);
insert into song values ('Part 8: " Las últimas habitaciones"', '2011-09-27', 220);
insert into song values ('Part 9: "Plomo en los bolsillos"', '2011-09-27', 245);
insert into song values ('Part 10: "Pedimiento"', '2011-09-27', 260);

insert into contains values (3229, 'Part 1: "Bienvenido al secadero"');
insert into contains values (3229, 'Part 2: "La majada"');
insert into contains values (3229, 'Part 3: "Sobran bueyes"');
insert into contains values (3229, 'Part 4: "El día que lluevan pianos"');
insert into contains values (3229, 'Part 5: "Canaleros"');
insert into contains values (3229, 'Part 6: "Ojalá me quieras libre"');
insert into contains values (3229, 'Part 7: "Ángeles del suelo"');
insert into contains values (3229, 'Part 8: " Las últimas habitaciones"');
insert into contains values (3229, 'Part 9: "Plomo en los bolsillos"');
insert into contains values (3229, 'Part 10: "Pedimiento"');
