
drop table if exists tag_map; 
create table tag_map(
tag_id int(11) unsigned not null, 
deal_id int(11) not null,
primary key (tag_id, deal_id)
)engine = InnoDB; 
