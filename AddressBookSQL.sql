CREATE DATABASE AddressBookService;
USE AddressBookService;

CREATE TABLE AddressBook(
    FirstName VARCHAR(20) NOT NULL PRIMARY KEY,
    LastName VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(20) NOT NULL,
    Zip INT(6) NOT NULL,
    PhoneNumber INT(12) NOT NULL,
    Email VARCHAR(50) NOT NULL
);