DELIMITER //
 DROP PROCEDURE IF EXISTS editMerchant//
 CREATE PROCEDURE editMerchant(pMID int,  pMName varchar(60), pMEmail varchar(60), pMContact int)
 
   BEGIN
   Declare error_message varchar(20) default "something is wrong"; 
   Declare mn varchar(60);  
   Declare me varchar(60); 
   Declare mc int; 
   Select  merchant_name, merchant_email, merchant_contact into mn,me,mc from merchant where merchant_id = pMID; 
   
   if( pMName != mn and pMName is not null) then 
   update merchant 
   set merchant_name = pMName
   where merchant_id = pMID; 
   end if ; 
   
   if (pMEmail !=me and pMEmail is not null) then
   update merchant
   set merchant_email = pMEmail
   where merchant_id = pMID; 
   end if;
   
   if (pMContact !=mc and pMContact is not null) then
   update merchant
   set merchant_contact = pMContact
   where merchant_id = pMID; 
   end if; 
   
   
   END //
DELIMITER ;
