
DROP TRIGGER IF EXISTS merchant_after_delete;
DELIMITER //

CREATE TRIGGER merchant_after_delete
AFTER DELETE
   ON merchant FOR EACH ROW

BEGIN

  INSERT INTO merchant_log (merchant_id, `action`, remarks) 
    VALUES 
  (old.merchant_id, 'remove', concat('merchant_name: ',old.merchant_name)) ,
  (old.merchant_id, 'remove', concat('merchant_email: ',old.merchant_email)), 
  (old.merchant_id, 'remove', concat('merchant_contact: ',old.merchant_contact)); 
  
  END; //

DELIMITER ;