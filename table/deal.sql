
drop table if exists deal; 
create table deal(
deal_id int(11) unsigned not null auto_increment, 
deal_name varchar(60), 
product_name varchar(60),
merchant_id int (11) unsigned not null, 
price decimal(10,2) unsigned not null, 
detail varchar(255), 
image_url varchar(255), 
category enum ('Trip', 'Equipment') not null,  
sub_category enum('Malaysia', 'Thailand', 'Indonesia','Breathable', 'Wearable', 'Accessories', 'Others' ) not null, 
total_hits_count int(11) unsigned default 0,
last_update_by varchar(20) default null, 
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
Primary Key (deal_id), 
key (merchant_id)
) engine = InnoDB;