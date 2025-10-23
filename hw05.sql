CREATE SCHEMA ss5_hw05;
USE ss5_hw05;

CREATE TABLE Products (
	`productId` INT PRIMARY KEY,
    `productName` VARCHAR(100) NOT NULL
);

CREATE TABLE OrderDetails (
	`orderDetailId` INT PRIMARY KEY,
    `productId` INT NOT NULL,
    `quantity` INT NOT NULL,
    `price` DEC(10, 2) NOT NULL
);

SELECT
    p.productName,
	SUM(quantity)
FROM OrderDetails o
JOIN Products p ON o.productId = p.productId
GROUP BY p.productName
ORDER BY SUM(quantity) DESC;