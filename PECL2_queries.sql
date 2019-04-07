#1
select musicgroup.id from musicgroup where musicgroup.genre = "Jazz";
#2
select distinct musician.name from musician, plays, instrument where musician.id = plays.id_musician && plays.name_instrument = instrument.name_instrument && instrument.name_instrument = "Drums";
#3
select distinct musician.name from musician, plays, instrument, musicgroup, belongs where musicgroup.id = belongs.id_group && belongs.id_musician = musician.id && musician.id = plays.id_musician && plays.name_instrument = instrument.name_instrument && instrument.name_instrument = "Saxophone" && musicgroup.genre = "Jazz";
#6
select distinct musicgroup.id, musicgroup.genre from musicgroup,(select count(musician.id) as counted from musician, belongs, musicgroup where belongs.id_musician = musician.id && belongs.id_group = musicgroup.id group by musicgroup.id) as counts where counted > 3;
#12
select distinct musician.name, disc.title,disc.song_format, disc.size_disc from musician, musicgroup, disc, creates, plays, instrument where disc.model_disc = "Digital" && musicgroup.id = creates.id_musicGroup && creates.reference_id = disc.id && musician.id = plays.id_musician && instrument.name_instrument = plays.name_instrument && instrument.name_instrument = "Guitar";



