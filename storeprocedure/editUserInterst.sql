DELIMITER //
 DROP PROCEDURE IF EXISTS editUserInterest//
 CREATE PROCEDURE editUserInterest(pUID int, pMalaysia int, pThailand int, pIndonesia int, pBreathable int, pWearable int, pAccessories int)
 
   BEGIN
   Declare error_message varchar(20) default "something is wrong"; 
   declare ma int default 2;
   declare mb int default 2; 
   declare ta int default 2;
   declare tb int default 2; 
   declare ia int default 2; 
   declare ib int default 2; 
   declare ba int default 2; 
   declare bb int default 2;
   declare wa int default 2; 
   declare wb int default 2; 
   declare aa int default 2; 
   declare ab int default 2;

   if (pMalaysia = 1)
   then 
   Select count(*) into ma from user_interest where user_id = pUID and sub_category = 'Malaysia';
   end if; 
   
    if (ma = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Trip', 'Malaysia'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Trip', 'Malaysia'); 
    end if; 
   
  if (pMalaysia = 0)
   then 
    Select count(*) into mb from user_interest where user_id = pUID and sub_category = 'Malaysia';

   end if; 
   
   if (mb = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Trip', 'Malaysia'); 
   delete from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Malaysia'; 
   end if; 
   
   
   if (pThailand = 1)
   then 
   Select count(*) into ta from user_interest where user_id = pUID and sub_category = 'Thailand';
   end if; 
   
    if (ta = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Trip', 'Thailand'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Trip', 'Thailand'); 
    end if; 
   
  if (pThailand = 0)
   then 
    Select count(*) into tb from user_interest where user_id = pUID and sub_category = 'Thailand';

   end if; 
   
   if (tb = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Trip', 'Thailand'); 
   delete from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Thailand'; 
   end if; 
   
   
   
   if (pIndonesia = 1)
   then 
   Select count(*) into ia from user_interest where user_id = pUID and sub_category = 'Indonesia';
   end if; 
   
    if (ia = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Trip', 'Indonesia'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Trip', 'Indonesia'); 
    end if; 
   
  if(pIndonesia = 0)
    then  
    Select count(*) into ib from user_interest where user_id = pUID and sub_category = 'Indonesia';

  end if; 
   
   if (ib = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Trip', 'Indonesia'); 
   delete from user_interest where user_id = pUID and category = 'Trip' and sub_category = 'Indonesia'; 
   end if; 
   
     if (pBreathable = 1)
   then 
   Select count(*) into ba from user_interest where user_id = pUID and sub_category = 'Breathable';
   end if; 
   
    if (ba = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Equipment', 'Breathable'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Equipment', 'Breathable'); 
    end if; 
   
  if(pBreathable = 0)
    then  
    Select count(*) into bb from user_interest where user_id = pUID and sub_category = 'Breathable';

  end if; 
   
   if (bb = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Equipment', 'Breathable'); 
   delete from user_interest where user_id = pUID and category = 'Equipment' and sub_category = 'Breathable'; 
   end if; 
   
   
     if (pWearable = 1)
   then 
   Select count(*) into wa from user_interest where user_id = pUID and sub_category = 'Wearable';
   end if; 
   
    if (wa = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Equipment', 'Wearable'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Equipment', 'Wearable'); 
    end if; 
   
  if(pWearable = 0)
    then  
    Select count(*) into wb from user_interest where user_id = pUID and sub_category = 'Wearable';

  end if; 
   
   if (wb = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Equipment', 'Wearable'); 
   delete from user_interest where user_id = pUID and category = 'Equipment' and sub_category = 'Wearable'; 
   end if; 
   
        if (pAccessories = 1)
   then 
   Select count(*) into aa from user_interest where user_id = pUID and sub_category = 'Accessories';
   end if; 
   
    if (aa = 0) then 
	insert into user_interest_log (user_id, `action`, category, sub_category)
    values
    (pUID,'add', 'Equipment', 'Accessories'); 
    insert into user_interest (user_id, category, sub_category)
    values
    (pUID,'Equipment', 'Accessories'); 
    end if; 
   
  if(pAccessories = 0)
    then  
    Select count(*) into ab from user_interest where user_id = pUID and sub_category = 'Accessories';

  end if; 
   
   if (ab = 1) then 
   insert into user_interest_log (user_id, `action`, category, sub_category)
   values
   (pUID,'remove', 'Equipment', 'Accessories'); 
   delete from user_interest where user_id = pUID and category = 'Equipment' and sub_category = 'Accessories'; 
   end if; 
   
   END //
DELIMITER ;