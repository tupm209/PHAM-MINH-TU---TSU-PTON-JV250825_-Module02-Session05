CREATE SCHEMA ss5_hw01;
USE ss5_hw01;

CREATE TABLE Customers (
	`customerId` INT PRIMARY KEY,
    `customerName` VARCHAR (100) NOT NULL,
    `contactEmail` VARCHAR (100) NOT NULL
);

CREATE TABLE Orders (
	`orderID` INT PRIMARY KEY,
    `customerId` INT NOT NULL,
    `orderDate` DATE NOT NULL,
    `totalAmount` DEC(10, 2) NOT NULL,
    FOREIGN KEY (customerId) REFERENCES Customers(customerId)
);

SELECT
	o.orderID,
    c.customerName,
    c.contactEmail
FROM Orders o
JOIN Customers c
ON o.customerId = c.customerId
ORDER BY orderID ASC;