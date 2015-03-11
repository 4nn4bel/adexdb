
DELIMITER //
 DROP PROCEDURE IF EXISTS addUserFavourite//
 CREATE PROCEDURE addUserFavourite(pUFavourite int, pUserID int, pDealID int)
   BEGIN
   
   Declare error_message varchar(20) default "something is wrong"; 
   Declare favourite int (11); 
   Select pUFavourite into favourite; 
   if (favourite =0) 
   then 
   insert into user_favourite_log (`action`, user_id, deal_id) 
   values 
   ("remove", pUserID, pDealID); 
   delete from user_favourite where user_id = pUserID and deal_id = pDealID; 
   
   else 
   insert into user_favourite(user_id, deal_id) values 
   (pUserID, pDealID);
   insert into user_favourite_log(`action`, user_id, deal_id) values 
   ("add", pUserID, pDealID); 
   
   end if;
   END //
DELIMITER ;