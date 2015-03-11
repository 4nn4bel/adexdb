
drop table if exists user_interest_log; 
create table user_interest_log(
log_id int(11) unsigned not null auto_increment,
user_id int(11) unsigned not null,
`action` varchar(20) not null default "",
category enum ('Trip', 'Equipment') not null,  
sub_category enum('Malaysia', 'Thailand', 'Indonesia','Breathable', 'Wearable', 'Accessories', 'Others' ) not null, 
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
primary key (log_id), 
key (user_id)
)engine = InnoDB; 