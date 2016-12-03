use shiftplanaas;

insert into  event (name, url_token_participants, url_token_admin, description, place)
values ( "Lange Nacht der Museen, MFR 2016", "testurltoken", "testurltoken_admin", "Sample event for Shiftplanaas", "Goethestr. 53 80336 München");

insert into event_comments (event_id, name, comment, date) values (1, "Suny",  "Soll ich was mitbringen?", now());
insert into event_comments (event_id, name, comment, date) values (1, "Anna",  "@Suny: Nein, aber zieh Dir was Ordentliches an.", now());

insert into shift_comments (shift_id, name, comment, date) values (1, "Peter",  "Wer hat den Schlüssel?", now());
insert into shift_comments (shift_id, name, comment, date) values (1, "Heinz",  "Ich habe den Schlüssel.", now());


insert into shift_series (event_id, tasks,  participants_min, place)
values (1, "Aufbau",  1, "Vor dem Hbf" );
insert into shift_series (event_id, tasks,  participants_min, participants_max, description)
values (1, "Glühwein verkaufen",  2, 4, "Sueffelt nicht zu viel" );

insert into shift (shift_series_id, description, created, last_change, begin, end)
values (1, "Um 19 Uhr sollte das Auto da sein, Heinz 0101 101010101", now(), now(), "2016.10.15T19:00Z", "2016.10.15T20:00Z");

