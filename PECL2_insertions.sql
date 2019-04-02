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
delete from composes;
delete from creates;
delete from performs;
delete from contains;
SET foreign_key_checks = 1; 
SET SQL_SAFE_UPDATES = 1;

insert into musicGroup values (270, 'Jazz');

insert into instrument values ('Saxophone');
insert into instrument values ('Piano');
insert into instrument values ('Double bass');

insert into musician values (06166844, 'John', 'Coltrane', 'W Hamlet Ave 28', 28345, 'Hamlet', 'North Carolina', 699278486, 932754923);
insert into plays values (06166844, 'Saxophone');
insert into belongs values (06166844, 270);

insert into musician values (05334423, 'Tommy', 'Flanagan', 'Grand Haven St', 48212, 'Detroit', 'Michigan', 642856023, 923435645);
insert into plays values (05334423, 'Piano');
insert into belongs values (05334423, 270);

insert into musician values (04628696, 'Wynton', 'Kelly', 'Bedford Ave', 11216, 'New York', 'New York', 694960342, 964012435);
insert into plays values (04628696, 'Piano');
insert into belongs values (04628696, 270);

insert into musician values (08484326, 'Paul', 'Chambers', 'Penn Ave', 15222, 'Pittsburgh', 'Pensilvania', 684245245, 908335928);
insert into plays values (08484326, 'Double bass');
insert into belongs values (08484326, 270);