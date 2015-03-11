
DROP TRIGGER IF EXISTS deal_after_update;
DELIMITER //

CREATE TRIGGER deal_after_update
AFTER UPDATE
   ON deal FOR EACH ROW
   
BEGIN

   Declare str varchar(255) default ''; 
   
   if ifnull(old.deal_name, '') != ifnull(new.deal_name, '') 
   then set str = concat(str, 'deal_name: ', ifnull(old.deal_name, ''), ' -> ', 
   ifnull(new.deal_name, ''),' ');
   end if; 
   
   if ifnull(old.product_name, '') != ifnull(new.product_name, '') 
   then set str = concat(str, 'product_name: ', ifnull(old.product_name, ''), ' -> ', 
   ifnull(new.product_name, ''),'');
   end if; 
   
   if ifnull(old.price, '') != ifnull(new.price, '') 
   then set str = concat(str, 'price: ', ifnull(old.price, ''), ' -> ', 
   ifnull(new.price, ''),'');
   end if; 
   
   if ifnull(old.detail, '') != ifnull(new.detail, '') 
   then set str = concat(str, 'detail: ', ifnull(old.detail, ''), ' -> ', 
   ifnull(new.detail, ''),'');
   end if; 

   if ifnull(old.image_url, '') != ifnull(new.image_url, '') 
   then set str = concat(str, 'image_url: ', ifnull(old.image_url, ''), ' -> ', 
   ifnull(new.image_url, ''),'');
   end if; 
   
   if ifnull(old.category, '') != ifnull(new.category, '') 
   then set str = concat(str, 'category: ', ifnull(old.category, ''), ' -> ', 
   ifnull(new.category, ''),'');
   end if; 
   
   if ifnull(old.sub_category, '') != ifnull(new.sub_category, '') 
   then set str = concat(str, 'sub_category: ', ifnull(old.sub_category, ''), ' -> ', 
   ifnull(new.sub_category, ''),'');
   end if; 
   
   if str <> '' then insert into deal_log (deal_id, merchant_id, `action`, remarks)
   values 
   (new.deal_id, new.merchant_id, 'update', str); 
   end if; 

END; //

DELIMITER ;