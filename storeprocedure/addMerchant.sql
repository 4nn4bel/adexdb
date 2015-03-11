 
 DELIMITER //
 DROP PROCEDURE IF EXISTS addMerchant//
 CREATE PROCEDURE addMerchant(pMName varchar(60), pMEmail varchar(60), pMContact int)
   BEGIN 
   Insert into merchant(merchant_name, merchant_email, merchant_contact)
   values
   (pMName, pMEmail, pMContact); 
   
   END //
 DELIMITER ;