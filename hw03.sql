CREATE SCHEMA ss5_hw03;
USE ss5_hw03;

CREATE TABLE EmployeeSalaries (
	`employeeId` INT PRIMARY KEY,
    `departmentId` INT NOT NULL,
    `salary` DEC(10, 2) NOT NULL
);

SELECT
	departmentId,
	SUM(salary),
    AVG(salary)
FROM EmployeeSalaries
GROUP BY departmentId
ORDER BY departmentId ASC;