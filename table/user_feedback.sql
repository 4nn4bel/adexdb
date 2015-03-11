
drop table if exists user_feedback;
create table user_feedback(
feedback_id int(11) unsigned not null auto_increment,
user_id  int(11) unsigned not null,
feedback_message varchar(255),
last_update_time timestamp not null default current_timestamp on update current_timestamp, 
Primary Key (feedback_id),
key(user_id)
) engine = InnoDB;