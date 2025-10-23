CREATE SCHEMA ss5_hw02;
USE ss5_hw02;

CREATE TABLE Sales (
	`saleId` INT PRIMARY KEY,
    `productId` INT NOT NULL,
    `saleDate` DATE NOT NULL,
    `quantity` INT NOT NULL,
    `amount` DEC (10, 2) NOT NULL
);

SELECT 
	productId,
	COUNT(saleId)
FROM Sales
GROUP BY productId
ORDER BY productId ASC;