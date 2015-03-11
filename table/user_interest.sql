
drop table if exists user_interest; 
create table user_interest(
user_id int(11) unsigned not null, 
category enum ('Trip', 'Equipment') not null,  
sub_category enum('Malaysia', 'Thailand', 'Indonesia','Breathable', 'Wearable', 'Accessories', 'Others' ) not null, 
primary key (user_id, category, sub_category)
)engine = InnoDB; 