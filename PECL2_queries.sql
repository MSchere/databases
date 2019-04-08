#1
select musicgroup.id 
from musicgroup 
where musicgroup.genre = "Jazz";
#2
select distinct musician.name 
from musician, plays, instrument 
where musician.id = plays.id_musician && plays.name_instrument = instrument.name_instrument && instrument.name_instrument = "Drums";
#3
select distinct musician.name 
from musician, plays, instrument, musicgroup, belongs 
where musicgroup.id = belongs.id_group && belongs.id_musician = musician.id && musician.id = plays.id_musician 
&& plays.name_instrument = instrument.name_instrument && instrument.name_instrument = "Saxophone" && musicgroup.genre = "Jazz";
#4
select distinct musicgroup.id 
from musicgroup, performs, concert 
where musicgroup.id = performs.id_musicGroup && performs.code_concert = concert.code && concert.country = 'Spain';
#5
select disc.title 
from contains, disc
where contains.reference_id = disc.id group by disc.title having count(contains.title_song) >= 10;
#6
select distinct musicgroup.id, musicgroup.genre from musicgroup,(select count(musician.id) as counted from musician, belongs, musicgroup where belongs.id_musician = musician.id && belongs.id_group = musicgroup.id group by musicgroup.id) as counts where counted >= 3;
select distinct musicgroup.id, musicgroup.genre from musicgroup, belongs, musician where belongs.id_musician = musician.id && belongs.id_group = musicgroup.id group by musicgroup.id having count(musician.id) >= 3;
#7
select user.name, disc.title, givesopiniondisc.points_rate_disc 
from givesopiniondisc, user, buysdisc, disc 
where givesopiniondisc.disc_id = disc.id  && givesopiniondisc.user_nif = user.nif && buysdisc.user_nif = user.nif 
group by disc.title having count(buysdisc.disc_id) >= 3;
#8
select distinct disc.id, disc.title 
from disc, contains, song 
where song.title = contains.title_song && contains.reference_id = disc.id 
&& song.duration > 300 && disc.model_disc = 'Physical' && disc.disc_type = 'lp';
#9
select distinct musician.name, concert.city 
from musician, belongs, musicgroup, performs, concert, sells, ticket 
where concert.city = 'Madrid' && ticket.price > 100 && concert.code = sells.concert_code && sells.ticket_code = ticket.code 
&& musicgroup.id = performs.id_musicGroup && performs.code_concert = concert.code && belongs.id_group = musicgroup.id 
&& belongs.id_musician = musician.id;
#10
select distinct user.nif, concert.city, givesopinionconcert.points_rate_concert 
from concert, sells, ticket, givesopinionconcert, user, buysticket 
where concert.city = 'Madrid' && ticket.price > 100 && concert.code = sells.concert_code && sells.ticket_code = ticket.code 
&& user.nif = buysticket.user_nif && ticket.code = buysticket.ticket_code && givesopinionconcert.concert_code = concert.code 
&& user.nif = givesopinionconcert.user_nif group by user.nif;
#11
select song.title, musician.name 
from musician, belongs, musicgroup, creates, disc, 
contains, song where musician.id = belongs.id_musician && belongs.id_group = musicgroup.id && musicgroup.id = creates.id_musicGroup 
&& creates.reference_id = disc.id && disc.id = contains.reference_id && contains.title_song = song.title 
&& year(disc.editionDate) = "2018" && musicgroup.genre = "Heavy Metal";
#12
select distinct musician.name, disc.title,disc.song_format, disc.size_disc 
from musician, musicgroup, disc, creates, plays, instrument 
where disc.model_disc = "Digital" && musicgroup.id = creates.id_musicGroup && creates.reference_id = disc.id 
&& musician.id = plays.id_musician && instrument.name_instrument = plays.name_instrument && instrument.name_instrument = "Guitar";
#13
select user.name, user.firstSurname, user.secondSurname 
from user, givesopinionconcert, concert, sells, ticket, buysticket 
where concert.code = sells.concert_code && sells.ticket_code = ticket.code && user.nif = buysticket.user_nif 
&& ticket.code = buysticket.ticket_code && givesopinionconcert.concert_code = concert.code && user.nif = givesopinionconcert.user_nif 
&& year(concert.concertDate) = "2018";
#14
select disc.title, song.title, givesopiniondisc.points_rate_disc 
from givesopiniondisc, disc, buysdisc, contains, song where buysdisc.user_nif = givesopiniondisc.user_nif 
&& disc.id = givesopiniondisc.disc_id && buysdisc.disc_id = disc.id && disc.id = contains.reference_id 
&& contains.title_song = song.title group by song.title having avg(givesopiniondisc.points_rate_disc) >= 8;
#15
