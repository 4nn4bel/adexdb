 
DELIMITER //
 DROP PROCEDURE IF EXISTS addTagToDeal//
 CREATE PROCEDURE addTagToDeal(pTID int, pDID int)
 
   BEGIN
  
   Insert into tag_map (tag_id, deal_id) 
   values
   (pTID, pDID);
   
   END //
DELIMITER ; 