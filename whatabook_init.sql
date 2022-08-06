-- drop test user if exists 

--drop user if exists
'whatabook_user'@'localhost';
-- create whatabook_user and grant them all privileges to the whatabook database 
Create user 'whatabook_user'@'localhost' identified with mysql_native_password by 
'MySQL8IsGreat!';
-- grant all privileges to the whatabook database to user whatabook_user on 
localhost 
grant all privileges whatabook.* to'whatabook_user'@'localhost';
-- drop tables if they are present
Drop table if exists user;
Drop table if exists book;
Drop table if exists wishlist;
Drop table if exists store;
Grant all privileges on whatabook_test.* To'whatabook_user'@'localhost';
-- create user table
Create table user (
user_id 
Int
Not null 
Auto_increment,
first_name 
Varchar(75) 
Not null,
last_name 
Varchar(75) 
Not null,
Primary key(user_id)
); 
-- create book table
Create table book (
book_id 
Int
Not null 
Auto_increment,
book_name 
Varchar(200) 
Not null,
details 
Varchar(500) 
Not null,
author 
Varchar(200) 
Not null,
Primary key(book_id)
);
-- create wishlist table
Create table wishlist (
wishlist_id 
Int
Not null 
Auto_increment,
user_id 
Int
Not null,
book_id 
Int
Not null,
Primary_key(wishlist_id),
Constraint book 
Foreign_key(book_id)
References book(book_id)
);
-- create store table
Create table store (
store_id 
Int
Not null,
locale 
Varchar(500) 
Not null,
 
Primary key(store_id)
);
-- insert store records
Insert into store(store_id, locale)
Values('1', '12 Thames Ave, London');
Insert into store(store_id, locale)
Values('2', '25 Red Cedar Dr, Bloomington, Illinois');
Insert into store(store_id, locale)
Values('3', ‘3600 World Dr, Orlando, Florida');
-- insert book records
Insert into book(book_id, book_name, details, author)
Values('1', 'Six Degrees: Six Degrees of Separation!','John Grosham');
Insert into book(book_id, book_name, details, author)
Values('2', 'The Great Wall: History of the Great Wall of China','Joseph Stallings');
Insert into book(book_id, book_name, details, author)
Values('3', 'Running with the Ghost',’A tale of Jack Gittleston and his dreams,'Gilbert Joseph');
Insert into book(book_id, book_name, details, author)
Values('4', 'Three Blind Mice',’A story about how three mice were able to steal the cheese,’Alan Halder’);
Insert into book(book_id, book_name, details, author)
Values('5', 'Space’ One Astronaut’s viewpoint of how it is to live in space.','Samantha Ponder');
Insert into book(book_id, book_name, details, author)
Values('6', 'Late Arrival...A History of the US Post Office','How the US Post Office works and a history of the Service.','Jacob Jacobs');
Insert into book(book_id, book_name, details, author)
Values('7', 'A Canadian Tale’,'A mouse named Geoff finds his way to a new land and has to adapt to his surroundings’,'Edward Wheeler');
Insert into book(book_id, book_name, details, author)
Values('8', 'Where the Red Ferns Grow','A story about a girl and her dog who got lost','Wilda Teeter');
Insert into book(book_id, book_name, details, author)
Values('9', 'Iron Man 52',A story of how Tony Stark and Pepper Potts fall in love and live happily ever after');
-- insert user records
Insert into user(user_id, first_name, last_name)
Values('1', 'Star','Wars');
Insert into user(user_id, first_name, last_name)
