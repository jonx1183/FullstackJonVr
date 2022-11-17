CREATE DATABASE wish;
USE wish;

CREATE TABLE wishliste
(
    id int AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    name2 VARCHAR(50)NOT NULL,
    name3 VARCHAR(50) NOT NULL,
    name4 VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)

);
DROP TABLE wishliste;

-- Connect a Database to wishlist

-- Connect two Databases Example
CREATE DATABASE shop;

USE shop;

CREATE TABLE customer(
                         custId int AUTO_INCREMENT,
                         firstname varchar(50),
                         lastname varchar(50),
                         email varchar(50),
                         PRIMARY KEY (custId)
);

CREATE TABLE orders(
                       orderId int auto_increment,
                       product varchar(50),
                       quantity int,
                       custId int ,
                       PRIMARY KEY (orderId),
                       FOREIGN KEY (custId) REFERENCES customer(custId)
);

-- Inserts

-- Insert customer
INSERT INTO customer(firstname, lastname, email) values ('Claus', 'Frederiksen', 'clbo@kea.dk');
INSERT INTO customer(firstname, lastname, email) values ('Anna', 'Frederiksen', 'anna@kea.dk');
INSERT INTO customer(firstname, lastname, email) values ('Tove', 'Frederiksen', 'tove@kea.dk');

-- Insert order
INSERT INTO orders(product, quantity, custId) VALUES ('Football',  1, 1 );
INSERT INTO orders(product, quantity, custId) VALUES ('Gloves',  1, 1 );
INSERT INTO orders(product, quantity, custId) VALUES ('Shirt',  2, 2 );
INSERT INTO orders(product, quantity, custId) VALUES ('Football',  2, 2 );
INSERT INTO orders(product, quantity, custId) VALUES ('Football',  5, 3 );

SELECT * FROM customer INNER JOIN orders on customer.custId = orders.custId WHERE customer.custId = 1;
SELECT * FROM customer INNER JOIN orders on customer.custId = orders.custId WHERE customer.custId = 2;

