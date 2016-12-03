use shiftplanaas;

create table organization (organization_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT, 
name varchar(120) NOT NULL,
url_token_participants varchar(512) UNIQUE,
url_token_admin varchar(512) UNIQUE,
description varchar(300),
creation_date datetime,
update_date datetime);

create table shift_type (shift_type_id int(30) unsigned PRIMARY KEY AUTO_INCREMENT,
organization_id int(30) unsigned NOT NULL, 
name varchar(300),
short_name varchar(10),
description varchar(300), 
location varchar(200),
participants_min int(10) unsigned,
participants_max int(10) unsigned,
creation_date datetime,
update_date datetime);

create table shift (
shift_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
organization_id int(30) unsigned NOT NULL, 
shift_type_id int(30) unsigned NOT NULL,
description varchar(200),
start_time datetime,
end_time datetime,
creation_date datetime,
update_date datetime);

create table shift_comments (shift_comment_id int(30) unsigned PRIMARY KEY AUTO_INCREMENT,
shift_id int(30) unsigned NOT NULL, 
name varchar(300),
comment varchar(120),
creation_date datetime);

create table participants (
participant_id int(30) unsigned PRIMARY KEY  AUTO_INCREMENT,
name varchar(300)
);

create table shift_participants
( shift_id int(30) unsigned NOT NULL,
participant_id int(30) unsigned NOT NULL,
answer  ENUM('yes', 'no', 'maybe') DEFAULT 'yes');

