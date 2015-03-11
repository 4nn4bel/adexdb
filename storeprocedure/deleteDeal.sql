
DELIMITER //
DROP PROCEDURE IF EXISTS deleteDeal//
 CREATE PROCEDURE deleteDeal(pDID int,pMID int)
 
   BEGIN
   -- Declare error_message varchar(20) default "something is wrong"; 
   
   delete from deal where deal_id = pDID and merchant_id = pMID; 
   
  
   END //
 DELIMITER ; 
 
