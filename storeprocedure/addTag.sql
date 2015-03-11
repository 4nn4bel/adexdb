  
DELIMITER //
  DROP PROCEDURE IF EXISTS addTag//
  CREATE PROCEDURE addTag(pTID int, pTName varchar(60))
 
   BEGIN

   Insert into tag (tag_name) 
   values
   (pTName);
   
   END //
DELIMITER ;