use shiftplanaas;

create table event (event_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT, 
name varchar(120) NOT NULL,
url_token_participants varchar(512) UNIQUE,
url_token_admin varchar(512) UNIQUE,
description varchar(300), 
place varchar(120)
);

create table event_comments (event_comment_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
event_id int(30) unsigned NOT NULL, 
name varchar(300),
comment varchar(120),
date datetime);

create table shift_comments (shift_comment_id int(30) unsigned PRIMARY KEY AUTO_INCREMENT,
shift_id int(30) unsigned NOT NULL, 
name varchar(300),
comment varchar(120),
date datetime);

create table shift_series (
shift_series_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
event_id int(30) unsigned NOT NULL,
tasks varchar(300),
participants_min int(10) unsigned,
participants_max int(10) unsigned,
description varchar(200),
place varchar(120)
) ;

create table shift (
shift_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
shift_series_id int(30) unsigned NOT NULL,
description varchar(200),
place varchar(120),
start_time datetime,
end_time datetime,
created datetime,
last_change datetime
);

create table participants (
participant_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
name varchar(300)
);

create table shift_participants
( shift_id int(30) unsigned NOT NULL,
participant_id int(30) unsigned NOT NULL,
answer  ENUM('yes', 'no', 'maybe') DEFAULT 'yes');

