CREATE DATABASE address_book_system;
USE address_book_system;
SELECT database();

CREATE TABLE AddressBookSystem(
id INT AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50),
address VARCHAR(100),
city VARCHAR(50),
state VARCHAR(50),
zip INT,
phoneNo VARCHAR(12),
email VARCHAR(100)
);

describe AddressBookSystem;

INSERT INTO AddressBookSystem (firstname, lastname, address, city, state, zip, phoneNo, email)
VALUES ("Tejaswini", "Shelake", "Hinjwadi","Pune", "Maharastra", "411004", "1234567809", "tejaswini.shelake@gmail.com"),
	   ("Divya", "Tekale", "Ambejogai", "Beed", "Maharastra", "431122", "9087654321", "divya.tekale@gmail.com"),
       ("Manish", "Sonawane", "Mulshi", "Pune", "Maharastra", "412108", "9078563412", "manish.sonawane@gmail.com"),
       ("Samrudhhi", "Bendugade", "Nigadi", "Pune", "Maharastra", "411044", "1234568709", "samrudhhi.bendugade@gmail.com"),
       ("Hitesh", "Wagh", "Jalgaon", "Dhile", "Maharastra", "424001", "32165487609", "hitesh.wagh@gmail.com"),
       ("Divyen", "Patil", "Powai", "Mumbai", "Maharastra", "400076", "1243657809", "divyen.patil@gmail.com");

SELECT * FROM AddressBookSystem;

SET SQL_SAFE_UPDATES = 0;
UPDATE AddressBookSystem SET address = "Panvel", city = "Mumbai", state = "Maharastra", zip = "410106" WHERE firstname = "Samrudhhi" AND lastname = "Bendugade";
       
DELETE FROM AddressBookSystem WHERE firstname = "Divyen";
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM AddressBookSystem;

SELECT * FROM AddressBookSystem WHERE city = "Pune" OR state = "Maharastara";
