use shiftplanaas;

create table event (
event_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT, 
name varchar(120) NOT NULL,
url varchar(512),
description varchar(300), 
place varchar(120),
created datetime,
last_changed datetime
);

create table event_comments (
comment_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
event_id int(30) unsigned NOT NULL, 
name varchar(300),
comment varchar(120),
date datetime
);

create table shift (
event_id int(30) unsigned NOT NULL,
shift_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
name varchar(100),
participants_min int(10) unsigned,
participants_max int(10) unsigned,
remark varchar(200)
);

create table shift_start_end (
shift_id int(30) unsigned NOT NULL,
start_time datetime,
end_time datetime
);

create table participants (
participant_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
name varchar(300)
);

create table shift_participants ( 
shift_id int(30) unsigned NOT NULL,
participant_id int(30) unsigned NOT NULL,
answer  ENUM('yes', 'no', 'maybe') DEFAULT 'yes'
);

