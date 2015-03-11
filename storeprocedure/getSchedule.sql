 
 DELIMITER //
  DROP PROCEDURE IF EXISTS getSchedule//
  CREATE PROCEDURE getSchedule(pCategory enum ('Main stage', 'second stage', 'third stage'))
 
   BEGIN

   Select day_name, day_number,date_format(`date`,'%e %M %Y'), speaker_name, description, 
   time_format(start_time,'%H:%i' ), time_format(end_time,'%H:%i' )from schedule_list
   where category = pCategory;

   END //
 DELIMITER ; 