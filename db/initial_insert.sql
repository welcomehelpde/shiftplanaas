insert into  event (name, url, description, created, last_changed, place)
values ( "Lange Nacht der Museen, MFR 2016", "testurl", "Sample event for Shiftplanaas", now(), now(), "Goethestr. 53 80336 München");

insert into event_comments (event_id, name, comment, date) values (1, "Suny",  "Soll ich was mitbringen?", now());
insert into event_comments (event_id, name, comment, date) values (1, "Anna",  "@Suny: Nein, aber zieh Dir was Ordentliches an.", now());

insert into shift (event_id, name,  participants_min)
values (1, "Aufbau",  1);

insert into shift (shift_id, start_time, end_time)
values (1, '2016-10-15 19:00', '2016-10-15 20:00');

