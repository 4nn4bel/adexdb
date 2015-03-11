
drop table if exists merchant_log;
create table merchant_log(
log_id int(11) unsigned not null auto_increment, 
merchant_id int(11) unsigned not null, 
`action` varchar(20) not null,  
remarks varchar (255) not null, 
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
primary key (log_id), 
key(merchant_id)
) engine = InnoDB;  