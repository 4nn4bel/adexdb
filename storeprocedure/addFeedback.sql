
DELIMITER //
DROP PROCEDURE IF EXISTS addFeedback//
 CREATE PROCEDURE addFeedback(pUserID int, pFirstName varchar(60), pContact int, pEmail varchar(60), pFeedbackMessage varchar(255))
 
   BEGIN
   -- Declare error_message varchar(20) default "something is wrong"; 
   
   insert into user_feedback(user_id, feedback_message)
   values
   (pUserID, pFeedbackMessage); 
   
   insert into user_info(user_id, first_name, contact, email)
   values
   (pUserID, pFirstName, pContact, pEmail);
  
   END //
 DELIMITER ; 