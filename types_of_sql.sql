SET SQL_SAFE_UPDATES = 0;
-- DDL Commands:

-- 1. CREATE

-- create table cust(u_id int NOT NULL PRIMARY KEY, ph_no int, u_name varchar(20)); 

-- create table premium_customer
-- select u_id, u_name, memberShip
-- from customer
-- where memberShip = 'P';

-- 2. Alter 

-- alter table customer
-- add memberShip varchar(10);
-- modify column dob varchar(10);
-- drop column dob;
-- rename column dob to DATE_OF_BIRTH;
-- rename to customer;

-- 3.  Rename
-- rename table P_cust to premium_customer;

-- 4. Truncate
-- truncate table emp;

-- 5. DROP
-- drop table emp;
-- drop database commands_exercise

-- select * from customer;
-- select * from premium_customer;

---------------------------------------------------------
-- DML Commands: 
-- 1. Insert

-- INSERT INTO USER VALUE(01,"test@gmail.com","admin");
-- OR Do insert multiple values like this: 
-- INSERT INTO USER(username, email, password)
-- VALUES
-- 	(02, 'dev01@gmail.com', 'root'),
-- 	(03, 'dev03@gmail.com', 'admin'),
-- 	(04, 'dev04@gmail.com', 'user1'),
--  (05, 'dev05@gmail.com', 'user2');

-- 2. Update 

-- UPDATE user SET PASSWORD = 'user 0' WHERE username= 3;
-- UPDATE user SET PASSWORD = 'Xuser' WHERE username = 2;

-- 3. Delete

-- 	Delete from user where username = 2;


-- select * from user; 

---------------------------------------------------------
-- DCL

-- 1. GRANT
-- 2. Revoke

---------------------------------------------------------
--  TCL Commands

-- SET autocommit = 0;
-- select * from players;

-- SAVEPOINT SV1;

-- delete 
-- from players
-- where ID=1;
-- COMMIT;

-- rollback TO SV1;
