-- SQL script to creates a trigger that resets valid_email
-- attribute only when the email has been changed.

DELIMITER $$
CREATE TRIGGER reset_email_trigger
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
IF NEW.email <> OLD.email
THEN
    SET NEW.valid_email = 0;
END IF;
END
$$
DELIMITER ;
