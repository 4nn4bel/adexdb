
DELIMITER //
 DROP PROCEDURE IF EXISTS addViewDealToHistory//
 CREATE PROCEDURE addViewDealToHistory(pUserID int, pDealID int, pDuration float )
   BEGIN

   insert into user_history(user_id, deal_id, duration)
   values
   (pUserID, pDealID, pDuration); 

   END //
DELIMITER ;
