
DROP TRIGGER IF EXISTS merchant_after_update;
DELIMITER //

CREATE TRIGGER merchant_after_update
AFTER UPDATE
   ON merchant FOR EACH ROW
   
BEGIN

   Declare str varchar(255) default ''; 
   
   if ifnull(old.merchant_name, '') != ifnull(new.merchant_name, '') 
   then set str = concat(str, 'merchant_name: ', ifnull(old.merchant_name, ''), ' -> ', 
   ifnull(new.merchant_name, ''),' ');
   end if; 
   
   if ifnull(old.merchant_email, '') != ifnull(new.merchant_email, '') 
   then set str = concat(str, 'merchant_email: ', ifnull(old.merchant_email, ''), ' -> ', 
   ifnull(new.merchant_email, ''),'');
   end if; 
   
   if ifnull(old.merchant_contact, '') != ifnull(new.merchant_contact, '') 
   then set str = concat(str, 'merchant_contact: ', ifnull(old.merchant_contact, ''), ' -> ', 
   ifnull(new.merchant_contact, ''),'');
   end if; 
   
   if str <> '' then insert into merchant_log (merchant_id, `action`, remarks)
   values 
   (new.merchant_id, 'update', str); 
   end if; 



END; //

DELIMITER ;