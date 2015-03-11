
drop table if exists deal_log;
create table deal_log(
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) unsigned NOT NULL,
  `merchant_id` int(11) unsigned NOT NULL,
  `action` varchar(20) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `deal_id` (`deal_id`),
  KEY `merchant_id` (`merchant_id`)
  ) engine = InnoDB; 