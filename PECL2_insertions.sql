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
insert into creates values (110,1784);

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