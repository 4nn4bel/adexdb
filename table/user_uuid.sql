
drop table if exists user_uuid; 
create table user_uuid(
user_uuid int(11) unsigned not null,
user_id int(11) unsigned not null auto_increment,
-- phone_number int(11) unsigned, 
Primary Key (user_id)
)engine = InnoDB; 