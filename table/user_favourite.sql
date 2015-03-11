
drop table if exists user_favourite;
create table user_favourite(
user_id int(11) unsigned not null, 
deal_id int(11) not null,
primary key (user_id, deal_id)
) engine = InnoDB; 