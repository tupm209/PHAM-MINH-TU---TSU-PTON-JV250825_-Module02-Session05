CREATE SCHEMA ss5_hw04;
USE ss5_hw04;

CREATE TABLE Products (
	`productId` INT PRIMARY KEY,
    `productName` VARCHAR(100) NOT NULL,
    `price` DEC(10, 2) NOT NULL
);

SELECT productName, price FROM Products WHERE price = (
	SELECT MAX(price) FROM Products
);

SELECT productName, price FROM Products WHERE price = (
	SELECT MIN(price) FROM Products
);