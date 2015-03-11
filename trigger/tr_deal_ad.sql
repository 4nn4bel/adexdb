
DROP TRIGGER IF EXISTS deal_after_delete;
DELIMITER //

CREATE TRIGGER deal_after_delete
AFTER DELETE
   ON deal FOR EACH ROW

BEGIN

  INSERT INTO deal_log (deal_id, merchant_id, `action`, remarks) 
    VALUES 
  (old.deal_id,old.merchant_id, 'remove', concat('deal_id: ',old.deal_id)),
  (old.deal_id,old.merchant_id, 'remove', concat('deal_name: ',old.deal_name)) ,
  (old.deal_id, old.merchant_id, 'remove', concat('product_name: ',old.product_name)), 
  (old.deal_id,old.merchant_id, 'remove', concat('merchant_id: ',old.merchant_id)) ,
  (old.deal_id, old.merchant_id, 'remove', concat('price: ',old.price)),
  (old.deal_id,old.merchant_id, 'remove', concat('detail: ',old.detail)), 
  (old.deal_id,old.merchant_id, 'remove', concat('image_url: ',old.image_url)) ,
  (old.deal_id,old.merchant_id, 'remove', concat('category: ',old.category)) ,
  (old.deal_id,old.merchant_id, 'remove', concat('sub_category: ',old.sub_category)) ,
  (old.deal_id,old.merchant_id, 'remove', concat('total_hits_count: ',old.total_hits_count)) ;
  
  END; //

DELIMITER ;
