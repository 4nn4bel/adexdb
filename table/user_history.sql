
drop table if exists user_history;
create table user_history(
log_id int(11) unsigned not null auto_increment, 
user_id int(11) unsigned not null, 
deal_id int(11) not null,
duration float (10,3),
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
primary key (log_id),
key(user_id),
key(deal_id)
) engine = InnoDB; 