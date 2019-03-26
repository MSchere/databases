SET FOREIGN_KEY_CHECKS = 0;
drop table if exists musician;
drop table if exists instrument;
drop table if exists musicGroup;
drop table if exists song;
drop table if exists disc;
#drop table if exists digital;
#drop table if exists physical;
drop table if exists concert;
drop table if exists ticket;
drop table if exists user;
drop table if exists sells;
drop table if exists givesOpinionDisc;
drop table if exists givesOpinionConcert;
drop table if exists buysDisc;
drop table if exists buysTicket;
drop table if exists plays;
drop table if exists belongs;
drop table if exists composes;
drop table if exists creates;
drop table if exists performs;
drop table if exists contains;
SET FOREIGN_KEY_CHECKS = 1;

create table ticket
(code int,
price int,
primary key (code));

create table concert
(code int,
concertDate date,
country varchar(40),
city varchar(40),
venue varchar (40),
sells int,
primary key (code),
foreign key (sells) references ticket(code));

create table instrument
(name varchar(40),
primary key(name));

create table song
(title varchar(40),
songDate date,
duration char(40),
primary key (title));

create table disc
(id int,
title varchar(40),
editionDate date,
model_disc varchar(8) check (model_disc in ('Digital', 'Physical')),
song_format varchar(4) check (model_disc = 'Digital' and  song_format in('mp3','aac', 'wma','flac')),
size_disc varchar(40) check (model_disc = 'Digital'),
disc_type varchar(2) check (model_disc = 'Physical' and disc_type in('cd','lp')),
contains varchar(40),
primary key (id),
foreign key (contains) references song(title));
#TODO: add digital and physical disc types.

#create table digital
#(song_format varchar(4) check (song_format in('MP3','AAC', 'WMA','FLAC')),
#size varchar(40),
#id int,
#title varchar(40),
#editionDate date,
#foreign key (id) references disc(id));

#create table physical
#(disc_type varchar(2) check (disc_type in('CD','LP')),
#id int,
#title varchar(40),
#editionDate date,
#foreign key (id) references disc(id));

create table musicGroup
(id int,
genre varchar(40),
performs int,
records int,
primary key (id),
foreign key (performs) references concert(code),
foreign key (records) references disc(id));

create table musician
(id int,
name varchar(40),
surname varchar(40),
adress varchar(40),
zipCode int,
residenceCity varchar(40),
province varchar(40),
phoneNumberMobile int,
phoneNumberHome int,
composes varchar(40),
plays varchar(40),
belongs int,
primary key (id),
foreign key (composes) references song(title),
foreign key (plays) references instrument(name),
foreign key (belongs) references musicGroup(id)
);

create table user
(nif varchar(9),
name varchar(40),
firstSurname varchar(40),
secondSurname varchar(40),
email varchar(40),
points int,
buysDisc int,
buysTicket int,
givesOpinionDisc int,
givesOpinionConcert int,
primary key (NIF),
foreign key (buysDisc) references disc(id),
foreign key (buysTicket) references ticket(code),
foreign key (givesOpinionDisc) references disc(id),
foreign key (givesOpinionConcert) references concert(code));

create table sells
(concert_code int,
ticket_code int,
foreign key (concert_code) references concert(code),
foreign key (ticket_code) references ticket(code));

create table givesOpinionConcert
(user_nif varchar(40),
concert_code int,
primary key (user_nif, concert_code),
foreign key (user_nif) references user(nif),
foreign key (concert_code) references concert(code));

create table givesOpinionDisc
(user_nif varchar(40),
disc_id int,
primary key (user_nif, disc_id),
foreign key (user_nif) references user(nif),
foreign key (disc_id) references disc(id));

create table buysDisc
(user_nif varchar(40),
disc_id int,
primary key (user_nif, disc_id),
foreign key (user_nif) references user(nif),
foreign key (disc_id) references disc(id));

create table buysTicket
(user_nif varchar(40),
ticket_code int,
primary key (user_nif, ticket_code),
foreign key (user_nif) references user(nif),
foreign key (ticket_code) references ticket(code));

create table plays
(id int,
name varchar(40),
primary key (id, name),
foreign key (id) references musician(id),
foreign key (name) references instrument(name));

create table belongs
(id_musician int,
id_group int,
primary key(id_musician, id_group),
foreign key (id_musician) references musician(id),
foreign key (id_group) references musicgroup(id));

create table composes
(id int,
title varchar(40),
primary key(id, title),
foreign key(id) references musician(id),
foreign key(title) references song(title));

create table creates
(id_musician int,
reference_id int,
primary key(id_musician, reference_id),
foreign key(id_musician) references musician(id),
foreign key(reference_id) references disc(id));

create table performs
(id int,
code int,
primary key(id, code),
foreign key(id) references musicGroup(id),
foreign key(code) references concert(code));

create table contains
(reference_id int,
title_song varchar(40),
primary key(reference_id, title_song),
foreign key(reference_id) references disc(id),
foreign key(title_song) references song(title));