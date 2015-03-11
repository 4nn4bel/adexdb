
drop table if exists tag;
create table tag(
tag_id int(11) unsigned not null auto_increment, 
tag_name varchar(60) not null,
primary key (tag_id)
) engine = InnoDB;  