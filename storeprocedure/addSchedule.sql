
 DELIMITER //
  DROP PROCEDURE IF EXISTS addSchedule//
  CREATE PROCEDURE addSchedule(pCategory enum ('Main stage', 'second stage', 'third stage'),pDayNo int, pDate Datetime, pSpeaker varchar(60),
  pDescription varchar(100), pSTime time, pETime time)
 
   BEGIN

   Insert into schedule_list ( category, day_number, `date`, speaker_name, description, start_time, end_time)
   values
   (pCategory, pDayNo,pDate, pSpeaker, pDescription, pSTime, pETime);   

   END //
  DELIMITER ;