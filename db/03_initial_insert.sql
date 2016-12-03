use shiftplanaas;

insert into  organization (name, url_token_participants, url_token_admin, description, creation_date, update_date)
values ( "Lange Nacht der Museen, MFR 2016", "testurltoken", "testurltoken_admin", "Sample event for Shiftplanaas", now(),now());

insert into shift_type (organization_id, shift_type_id, name, short_name, description, location,  participants_min, participants_max, creation_date, update_date)
values (1, 1, "Aufbau vom Zeug", "Aufbau" ,"das wird ziemlich anstrengend", "Vor dem Hbf",2,5,now(),now() );
insert into shift_type (organization_id, shift_type_id, name, short_name, description, location, participants_min, participants_max, creation_date, update_date)
values (1, 2, "Glühwein verkaufen", "Gluehwverk" , "Sueffelt nicht zu viel", "hinter dem Hbf",2,3 ,now(),now());

insert into shift_comments (shift_id, name, comment, creation_date) values (1, "Peter",  "Wer hat den Schlüssel?", now());
insert into shift_comments (shift_id, name, comment, creation_date) values (1, "Heinz",  "Ich habe den Schlüssel.", now());

insert into shift (organization_id, shift_type_id, description,  start_time, end_time, creation_date, update_date)
values (1, 1, "Um 19 Uhr sollte das Auto da sein, Heinz 0101 101010101", "2016.10.15 19:00", "2016.10.15 20:00", now(), now());

