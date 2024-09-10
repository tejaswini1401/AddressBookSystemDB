create database address_book_system;
use address_book_system;
select database();

create table AddressBookSystem(
id int auto_increment primary key,
firstname varchar(50),
lastname varchar(50),
address varchar(100),
city varchar(50),
state varchar(50),
zip INT,
phoneNo varchar(12),
email varchar(100)
);

describe AddressBookSystem;