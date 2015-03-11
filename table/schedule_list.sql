
drop table if exists schedule_list; 
create table schedule_list(
schedule_id int(11) unsigned not null auto_increment, 
category enum ('Main stage', 'second stage', 'third stage') not null, 
day_name varchar(3) default "day",
day_number int (1) default 0, 
`date` datetime, 
speaker_name varchar(100), 
description varchar(100),
start_time time, 
end_time time,
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
Primary Key (schedule_id)
) engine = InnoDB;