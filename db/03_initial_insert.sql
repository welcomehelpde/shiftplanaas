use shiftplanaas;

insert into  event (name, url_participants, url_admin, description, place)
values ( "Lange Nacht der Museen, MFR 2016", "testurl", "testurl_admin", "Sample event for Shiftplanaas", "Goethestr. 53 80336 München");

insert into event_comments (event_id, name, comment, date) values (1, "Suny",  "Soll ich was mitbringen?", now());
insert into event_comments (event_id, name, comment, date) values (1, "Anna",  "@Suny: Nein, aber zieh Dir was Ordentliches an.", now());

insert into shift_series (event_id, tasks,  participants_min)
values (1, "Aufbau",  1);

insert into shift_start_end (shift_id, start_time, end_time)
values (1, '2016-10-15 19:00', '2016-10-15 20:00');

