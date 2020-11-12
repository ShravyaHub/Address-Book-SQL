CREATE DATABASE AddressBookService;
USE AddressBookService;

CREATE TABLE AddressBook(
    FirstName VARCHAR(20) NOT NULL PRIMARY KEY,
    LastName VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(20) NOT NULL,
    Zip INT(6) NOT NULL,
    PhoneNumber BIGINT(12) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

INSERT INTO AddressBook(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('Shravya', 'K', 'Kanakapura', 'Bangalore', 'KA', '560062', '919591266654', 'shravya@gmail.com'),
    ('Radhika', 'M', 'Jakkasandra','Bangalore', 'KA', '566021', '919661244433', 'radhika@gmail.com');

UPDATE AddressBook SET Address = 'J P Nagar' WHERE FirstName = 'Shravya';

DELETE FROM AddressBook WHERE FirstName = 'Radhika';