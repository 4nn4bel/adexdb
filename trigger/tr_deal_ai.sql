
DROP TRIGGER IF EXISTS deal_after_insert;
DELIMITER //

CREATE TRIGGER deal_after_insert
AFTER INSERT
   ON deal FOR EACH ROW

BEGIN

  INSERT INTO deal_log (deal_id, merchant_id, `action`, remarks) 
    VALUES 
  (new.deal_id, new.merchant_id,  'add', concat('deal_name: ',new.deal_name)) ,
  (new.deal_id, new.merchant_id,'add', concat('product_name: ',new.product_name)), 
  -- (new.deal_id,new.merchant_id, 'add', concat('merchant_id: ',new.merchant_id)),
  (new.deal_id,new.merchant_id, 'add', concat('price: ',new.price)),
  (new.deal_id,new.merchant_id, 'add', concat('detail: ',new.detail)),
  (new.deal_id,new.merchant_id, 'add', concat('image_url: ',new.image_url)),
  (new.deal_id,new.merchant_id, 'add', concat('category: ',new.category)),
  (new.deal_id,new.merchant_id, 'add', concat('sub_category: ',new.sub_category));
         
  
  END; //
 
  

DELIMITER ;