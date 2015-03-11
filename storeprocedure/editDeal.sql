DELIMITER //
 DROP PROCEDURE IF EXISTS editDeal//
 CREATE PROCEDURE editDeal(pDID int, pDealName varchar(60),  
pProductName varchar(60), PMID int, pPrice decimal, pDetail varchar(255), 
pImageUrl varchar(255), pCategory enum('Trip','Equipment'), 
pSub_Category enum('Malaysia','Thailand','Indonesia','Breathable','Wearable','Accessories','Others'), 
pImageName varchar(60))
 
   BEGIN
   Declare error_message varchar(20) default "something is wrong"; 
   Declare dn varchar(60);  
   Declare pn varchar(60); 
   Declare dp decimal (10,2) unsigned; 
   Declare dd varchar(255); 
   Declare diurl varchar (255); 
   Declare dc varchar(25); 
   declare dsc varchar (25); 
   declare dealID int; 
   declare din varchar(60); 
   
   Select  deal_name, product_name, price, detail, image_url, category, sub_category 
   into dn,pn, dp, dd, diurl, dc, dsc 
   from deal 
   where merchant_id = pMID
   and deal_id = pDID; 
   
   Select image_name into din from deal_image where deal_id = pDID and image_url = diurl; 
   
   if( pDealName != dn and pDealName is not null) then 
   update deal 
   set deal_name = pDealName
   where merchant_id = pMID
   and deal_id = pDID; 
   end if ; 
   
    if( pProductName != pn and pProductName is not null) then 
   update deal 
   set product_name = pProductName
   where merchant_id = pMID
   and deal_id = pDID; 
   end if ;
   
  if( pPrice != dp and pPrice is not null) then 
   update deal 
   set price = pPrice
   where merchant_id = pMID
   and deal_id = pDID; 
   end if ;
   
     if( pDetail != dd and pDetail is not null) then 
   update deal 
   set detail = pDetail
   where merchant_id = pMID
   and deal_id = pDID; 
   end if ;
   
   if( pImageUrl != diurl and pImageUrl is not null and pImageName != din and pImageName is not null) then 
   update deal 
   set image_url = pImageUrl
   where merchant_id = pMID
   and deal_id = pDID; 
   
   insert into deal_image(deal_id, image_name, image_url)
   values
   (pDID, pImageName, pImageURL);
   
   end if; 
   
   if( pImageUrl != diurl and pImageUrl is not null and pImageName is null) then 
   update deal 
   set image_url = pImageUrl
   where merchant_id = pMID
   and deal_id = pDID; 
   
   insert into deal_image(deal_id, image_name, image_url)
   values
   (pDID, din, pImageURL);
   
   end if; 
   
   if( pCategory != dc and pCategory is not null) then 
   update deal 
   set category = pCategory
   where merchant_id = pMID
   and deal_id = pDID; 
   end if ;
   
   if( pSub_Category != dsc and pSub_Category is not null) then 
   update deal 
   set sub_category = pSub_Category
   where merchant_id = pMID
   and deal_id = pDID; 
   end if ;
   
   END //
DELIMITER ;