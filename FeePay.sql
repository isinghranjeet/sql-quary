
IF DB_ID('FeePay') IS NULL
    CREATE DATABASE FeePay;
GO


USE FeePay;
GO


IF OBJECT_ID('Payments', 'U') IS NOT NULL
    DROP TABLE Payments;
GO


CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    student_name VARCHAR(60) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    payment_date DATE
);
GO

-- Transaction: insert multiple payments and commit
BEGIN TRANSACTION;

INSERT INTO Payments(payment_id, student_name, amount, status, payment_date) 
VALUES 
    (101,'Ranjeet',2000.00,'success','2025-03-20'),
    (102,'Satyam',2500.00,'success','2025-08-23'),
    (103,'Anand',3000.00,'pending','2025-07-20');

COMMIT TRANSACTION;
GO


SELECT * FROM Payments;
GO


BEGIN TRANSACTION;

INSERT INTO Payments(payment_id, student_name, amount, status, payment_date) 
VALUES (104,'Rahul',4000.00,'pending','2025-09-29');

ROLLBACK TRANSACTION;
GO


SELECT * FROM Payments;
GO
