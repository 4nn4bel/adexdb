
drop table if exists deal_image;
create table deal_image(
image_id int(11) unsigned not null auto_increment, 
deal_id int(11) not null,
image_name varchar(60), 
-- image blob not null,
image_url varchar(150),
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
primary key (image_id),
key(deal_id), 
unique key(image_url)
) engine = InnoDB; 

