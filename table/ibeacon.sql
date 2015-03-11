
drop table if exists ibeacon; 
create table ibeacon(
ibeacon_id int(11) unsigned not null auto_increment,  
merchant_id int unsigned not null, 
location_id int unsigned, 
booth_number int unsigned,
coordinate varchar(60), 
message varchar(30),
Primary Key (ibeacon_id),
key(merchant_id),
key(location_id) 
) engine = InnoDB;