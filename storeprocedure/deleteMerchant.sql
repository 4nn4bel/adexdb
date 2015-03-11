
DELIMITER //
DROP PROCEDURE IF EXISTS deleteMerchant//
 CREATE PROCEDURE deleteMerchant(pMID int)
 
   BEGIN
   -- Declare error_message varchar(20) default "something is wrong"; 
   
   delete from merchant where merchant_id = pMID; 
   
  
   END //
 DELIMITER ; 