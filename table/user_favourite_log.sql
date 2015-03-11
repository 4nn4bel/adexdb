
drop table if exists user_favourite_log; 
create table user_favourite_log(
log_id int(11) unsigned not null auto_increment,
`action` varchar(20) not null default "", 
user_id int(11) unsigned not null, 
deal_id int(11) not null,
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
primary key (log_id), 
key(user_id), 
key(deal_id)
)engine = InnoDB;