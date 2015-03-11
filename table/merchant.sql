
drop table if exists merchant;
create table merchant(
merchant_id int(11) unsigned not null auto_increment, 
merchant_name varchar(60) not null,
merchant_email varchar(60) unique, 
merchant_contact int(11),
primary key (merchant_id)
) engine = InnoDB;  