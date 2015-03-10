
drop table if exists user_info;
create table user_info(
user_id  int(11) unsigned not null,
first_name varchar(60) not null,
contact int(11) unsigned,
email varchar (60) unique,
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
Primary Key (user_id)
) engine = InnoDB; 