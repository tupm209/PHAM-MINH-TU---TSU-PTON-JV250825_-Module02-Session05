CREATE SCHEMA ss5_hw06;
USE ss5_hw06;

CREATE TABLE Sales (
	`saleId` INT PRIMARY KEY,
    `saleDate` DATE NOT NULL,
    `price` DEC(10, 2) NOT NULL
);

SELECT
	YEAR(saleDate) AS "Năm",
    MONTH(saleDate) AS "Tháng",
	SUM(price) AS "Tổng doanh thu tháng",
	COUNT(saleId) AS "Số lượng đơn hàng",
	AVG(price) AS "Doanh thu trung bình"
FROM Sales
WHERE YEAR(saleDate) = 2025
GROUP BY YEAR(saleDate), MONTH(saleDate)
ORDER BY MONTH(saleDate);