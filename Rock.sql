SET SQL_SAFE_UPDATES = 0;
SET foreign_key_checks = 0; 
delete from musician;
delete from instrument;
delete from musicGroup;
delete from song;
delete from disc;
delete from concert;
delete from ticket;
delete from user;
delete from sells;
delete from givesOpinionDisc;
delete from givesOpinionConcert;
delete from buysDisc;
delete from buysTicket;
delete from plays;
delete from belongs;
delete from creates;
delete from performs;
delete from contains;
SET foreign_key_checks = 1; 
SET SQL_SAFE_UPDATES = 1;

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
