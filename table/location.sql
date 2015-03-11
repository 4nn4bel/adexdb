
drop table if exists location; 
create table location(
location_id int(11) unsigned not null, 
user_id int unsigned not null, 
distance decimal (10,2), 
Primary Key (location_id, user_id), 
key (merchant_id)
) engine = InnoDB;