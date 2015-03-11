
DELIMITER //
DROP PROCEDURE IF EXISTS addDeal//
 CREATE PROCEDURE addDeal(pDName varchar(60),  pProductName varchar(30),pMID int, pPrice decimal, pDetail varchar(255), 
 pImageUrl varchar(150),pCategory enum ('Trip', 'Equipment'), 
 pSubCategory enum('Malaysia','Thailand','Indonesia','Breathable','Wearable','Accessories','Others'),
 pImageName varchar(60))
 
   BEGIN
   -- Declare error_message varchar(20) default "something is wrong"; 
   
   Declare dealID int (11) unsigned; 
   Insert into deal(deal_name, merchant_id, product_name, price, detail, image_url, category, sub_category)
   values
   (pDName, pMID, pProductName, pPrice, pDetail, pImageUrl, pCategory, pSubCategory);
   
   Set dealID = LAST_INSERT_ID(); 
   
   insert into deal_image(deal_id, image_name, image_url)
   values 
   (dealID, pImageName, pImageUrl); 
   
  
   END //
 DELIMITER ; 