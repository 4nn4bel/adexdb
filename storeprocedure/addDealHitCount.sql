  
  DELIMITER //
 DROP PROCEDURE IF EXISTS addDealHitCount//
 CREATE PROCEDURE addDealHitCount(pClick int, pDealID int)
 
   BEGIN
   Declare error_message varchar(20) default "something is wrong"; 
   if (pClick !=1) 
   then select error_message; 
   else 
   update deal 
   set total_hits_count = total_hits_count +1
   where deal_id = pDealID; 
   end if;
   END //
 DELIMITER ;  