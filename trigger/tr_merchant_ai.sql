
DROP TRIGGER IF EXISTS merchant_after_insert;
DELIMITER //

CREATE TRIGGER merchant_after_insert
AFTER INSERT
   ON merchant FOR EACH ROW

BEGIN

  INSERT INTO merchant_log (merchant_id, `action`, remarks) 
    VALUES 
  (new.merchant_id, 'add', concat('merchant_name: ',new.merchant_name)) ,
  (new.merchant_id, 'add', concat('merchant_email: ',new.merchant_email)), 
  (new.merchant_id, 'add', concat('merchant_contact: ',new.merchant_contact)); 
  
  END; //

DELIMITER ;
