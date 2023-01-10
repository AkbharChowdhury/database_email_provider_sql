SELECT * FROM posts.users where email like 'barry123%';
-- use posts;
DROP trigger if EXISTS tr_ins_capitalise_name;

CREATE TRIGGER
 tr_ins_capitalise_name BEFORE INSERT ON users
FOR EACH ROW
	SET NEW.firstname =
    CONCAT(UPPER(SUBSTRING(NEW.firstname,1,1)),LOWER(SUBSTRING(NEW.firstname,2)));
-- captilise name link:
-- https://www.mysqltutorial.org/mysql-unique/


INSERT INTO users VALUES('barry123@gmail.com','barry','smith');
