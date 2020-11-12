CREATE DATABASE AddressBookService;
USE AddressBookService;

CREATE TABLE AddressBook(
    FirstName VARCHAR(20) NOT NULL,
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

SELECT * FROM AddressBook WHERE City = 'Bangalore';

SELECT COUNT(City) FROM AddressBook WHERE City = 'Bangalore';

SELECT * FROM AddressBook WHERE City = 'Bangalore' ORDER BY FirstName ASC;

ALTER TABLE AddressBook ADD AddressBookName VARCHAR(20);

ALTER TABLE AddressBook ADD AddressBookName VARCHAR(20);

ALTER TABLE AddressBook ADD AddressBookType VARCHAR(20);

UPDATE AddressBook SET AddressBookName = 'AddressBook' WHERE FirstName = 'Shravya';

UPDATE AddressBook SET AddressBookType = 'Family' WHERE FirstName = 'Shravya';

UPDATE AddressBook SET AddressBookName = 'AddressBook' WHERE FirstName = 'Radhika';

UPDATE AddressBook SET AddressBookType = 'Friend' WHERE FirstName = 'Radhika';

SELECT COUNT(AddressBookType) FROM AddressBook WHERE AddressBookType = 'Family';

CREATE TABLE Family(
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(20) NOT NULL,
    Zip INT(6) NOT NULL,
    PhoneNumber BIGINT(12) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

INSERT INTO Family(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('Shravya', 'K', 'J P Nagar', 'Bangalore', 'KA', '560062', '919591266654', 'shravya@gmail.com');

CREATE TABLE Friend(
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(20) NOT NULL,
    Zip INT(6) NOT NULL,
    PhoneNumber BIGINT(12) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

INSERT INTO Friend(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('Radhika', 'M', 'Jakkasandra','Bangalore', 'KA', '566021', '919661244433', 'radhika@gmail.com');

INSERT INTO Family(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('Namratha', 'K', 'Kanakapura','Bangalore', 'KA', '566031', '919661564433', 'namratha@gmail.com');

INSERT INTO Friend(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) VALUES
    ('Namratha', 'K', 'Kanakapura','Bangalore', 'KA', '566031', '919661564433', 'namratha@gmail.com');

