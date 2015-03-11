DELIMITER //
 DROP PROCEDURE IF EXISTS editUserOthersInterest//
 CREATE PROCEDURE editUserOthersInterest(pUID int, pnumberOfCategory int, pOthers int)
 
   BEGIN
   Declare error_message varchar(20) default "something is wrong"; 
   declare ta int default 2;
   declare tb int default 2; 
   declare ea int default 2;
   declare eb int default 2; 
   declare bta int default 2;
   declare btb int default 2; 
   declare bea int default 2; 
   declare beb int default 2; 
  
   

   if (pnumberOfCategory = 1 and pOthers = 1)
   then 
   Select count(*) into ta from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Others'; 
   end if; 
   
    if (ta = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Trip', 'Others'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Trip', 'Others'); 
    end if; 
   
  if (pnumberOfCategory = 1 and pOthers = 0)
   then 
    Select count(*) into tb from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Others';

   end if; 
   
   if (tb = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Trip', 'Others'); 
   delete from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Others'; 
   end if; 
   
   
   if (pnumberOfCategory = 2 and pOthers = 1)
   then 
   Select count(*) into ea from user_interest where user_id = pUID and category = 'Equipment' and sub_category = 'Others';
   end if; 
   
    if (ea = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Equipment', 'Others'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Equipment', 'Others'); 
    end if; 
   
  if (pnumberOfCategory = 2 and pOthers = 0)
   then 
    Select count(*) into eb from user_interest where user_id = pUID and sub_category = 'Others';

   end if; 
   
   if (eb = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Equipment', 'Others'); 
   delete from user_interest where user_id = pUID and category = 'Equipment' and sub_category = 'Others'; 
   end if; 
   
   
   
 if (pnumberOfCategory = 3 and pOthers = 1)
   then 
   Select count(*) into bta from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Others';
   select count(*) into bea from user_interest where user_id = pUID and category = 'Equipment' and sub_category ='Others'; 
   end if; 
   
    if (bta = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Trip', 'Others'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Trip', 'Others'); 
    end if; 
    
      if (bea = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Equipment', 'Others'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Equipment', 'Others'); 
    end if; 
   
  if(pnumberOfCategory = 3 and pOthers = 0)
    then  
   Select count(*) into btb from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Others';
   select count(*) into beb from user_interest where user_id = pUID and category = 'Equipment' and sub_category ='Others'; 

  end if; 
   
   if (btb = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Trip', 'Others'); 
   delete from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Others'; 
   end if; 
   
    if (beb = 1) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'remove', 'Equipment', 'Others'); 
	delete from user_interest where user_id = pUID and category = 'Equipment' and sub_category = 'Others'; 
    end if; 
   
   END //
DELIMITER ;