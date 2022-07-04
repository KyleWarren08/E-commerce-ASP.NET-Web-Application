USE MASTER
-------------------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.databases WHERE NAME = 'Ecommerce_Web_App_DB')
DROP DATABASE Ecommerce_Web_App_DB;
-------------------------------------------------------------------------------------------------------
CREATE DATABASE Ecommerce_Web_App_DB;
-------------------------------------------------------------------------------------------------------
USE Ecommerce_Web_App_DB;
-------------------------------------------------------------------------------------------------------
CREATE TABLE dbo.Register(
[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[NAME] VARCHAR(100) NOT NULL,
[EMAIL] VARCHAR(100) NOT NULL,
[PASSWORD] VARCHAR(100) NOT NULL,
[ROLE] VARCHAR(50) NOT NULL
);
-------------------------------------------------------------------------------------------------------
/*
SELECT *
FROM dbo.Register;

DROP TABLE dbo.Register;
*/
-------------------------------------------------------------------------------------------------------
CREATE TABLE dbo.Products(
[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[PRODUCT_NAME] VARCHAR(150) NOT NULL,
[PRODUCT_DESCRIPTION] VARCHAR(MAX) NOT NULL,
[PRODUCT_PRICE] DECIMAL(18,0) NOT NULL,
[PRODUCT_IMAGE] VARCHAR(MAX) NOT NULL,
[PRODUCT_CATERGORY_ID] VARCHAR(100) NOT NULL,
[PRODUCT_COMPANY_ID] VARCHAR(100) NOT NULL
);
-------------------------------------------------------------------------------------------------------
INSERT INTO dbo.Products([PRODUCT_NAME], [PRODUCT_DESCRIPTION], [PRODUCT_PRICE], [PRODUCT_IMAGE], [PRODUCT_CATERGORY_ID], [PRODUCT_COMPANY_ID])
VALUES ('Cougar Conquer', 'Cougar Conquer gaming case', '5000', '~/Saved_Images/Cougar Conquer.png', 'Case', '1'),
	   ('TUF Case', 'Large PC case', '3000', '~/Saved_Images/TUF Case.png', 'Case', '2'),
	   ('Ryzen 7 3700x', '8-core PC processor', '6000', '~/Saved_Images/Ryzen 7 3700x.png', 'CPU', '3'),
	   ('Ryzen 5 5600x', '6-core PC processor', '5000', '~/Saved_Images/Ryzen 5 5600x.png', 'CPU', '3'),
	   ('RX 5700XT', '8-GB Graphics Card', '10000', '~/Saved_Images/RX 5700XT.png', 'GPU', '3'),
	   ('RX 5600XT', '6-GB Graphics Card', '8000', '~/Saved_Images/RX 5600XT.png', 'GPU', '3'),
	   ('WD 1TB HDD', '1TB HDD', '1000', '~/Saved_Images/WD 1TB.png', 'HDD', '9'),
	   ('Sandisk 500GB SSD', '500GB HDD', '1200', '~/Saved_Images/Sandisk 500GB.png', 'M.2 SSD', '6'),
	   ('MSI X570', 'AMD Motherboard X570', '2300', '~/Saved_Images/MSI X570.png', 'Motherboard AMD', '5'),
	   ('Galaxy Intel Motherboard', 'Intel Motherboard for PC', '2600', '~/Saved_Images/Galaxy Intel.png', 'Motherboard Intel', '4'),
	   ('Corsair VS550', 'PC Power Supply', '800', '~/Saved_Images/Corsair VS 550.png', 'Power Supply', '7'),
	   ('MSI G Skill RAM', 'RAM for PC', '1000', '~/Saved_Images/Ram GSkill.png', 'RAM', '5'),
	   ('Golden SATA 1TB SSD', 'SATA SSD for PC', '2000', '~/Saved_Images/Golderfir 1TB SSD.png', 'SATA SSD', '8');
-------------------------------------------------------------------------------------------------------
/*
SELECT *
FROM dbo.Products;

DROP TABLE dbo.Products;
*/
-------------------------------------------------------------------------------------------------------
CREATE TABLE dbo.Catergories(
[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[CATERGORY_NAME] VARCHAR(150) NOT NULL,
[CATERGORY_DESCRIPTION] VARCHAR(MAX) NOT NULL
);
-------------------------------------------------------------------------------------------------------
/*
SELECT *
FROM dbo.Catergories;

DROP TABLE dbo.Catergories;
*/
-------------------------------------------------------------------------------------------------------
CREATE TABLE dbo.Company(
[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[COMPANY_NAME] VARCHAR(150) NOT NULL,
[COMPANY_DESCRIPTION] VARCHAR(MAX) NOT NULL
);
-------------------------------------------------------------------------------------------------------
INSERT INTO dbo.Company([COMPANY_NAME], [COMPANY_DESCRIPTION])
VALUES ('Cougar','Cougar gaming accessories'),
	   ('TUF','PC case designers'),
	   ('AMD', 'Advanced Micro Devices'),
	   ('Galaxy', 'Galaxy PC parts international'),
	   ('MSI', 'MSI PC parts designers'),
	   ('Sandisk', 'Great quality SSD drives'),
	   ('Corsair', 'Powerful power supplies'),
	   ('Goldenfir', 'SSD designers'),
	   ('WD', 'HDD designers');
-------------------------------------------------------------------------------------------------------
/*
SELECT *
FROM dbo.Company;

DROP TABLE dbo.Company;
*/
-------------------------------------------------------------------------------------------------------
CREATE TABLE dbo.Cart(
[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[PRODUCT_NAME] VARCHAR(150) NOT NULL,
[PRODUCT_CATERGORY] VARCHAR(100) NOT NULL,
[EMAIL] VARCHAR(100) NOT NULL,
[QUANTITY] INT NOT NULL,
[PRODUCT_PRICE] DECIMAL(18,0) NOT NULL,
[PRODUCT_ID] INT NOT NULL
);
-------------------------------------------------------------------------------------------------------
/*
SELECT *
FROM dbo.Cart;

DROP TABLE dbo.Cart;
*/
-------------------------------------------------------------------------------------------------------
CREATE TABLE dbo.Orders(
[ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
[PRODUCT_NAME] VARCHAR(150) NOT NULL,
[PRODUCT_CATERGORY]VARCHAR(100) NOT NULL,
[EMAIL] VARCHAR(100) NOT NULL,
[QUANTITY] INT NOT NULL,
[PRODUCT_PRICE] DECIMAL (18,0) NOT NULL,
[PRODUCT_ID] INT NOT NULL,
[ORDER_DATE] DATETIME NOT NULL,
);
-------------------------------------------------------------------------------------------------------
/*
SELECT *
FROM dbo.Orders;

DROP TABLE dbo.Orders;
*/
-------------------------------------------------------------------------------------------------------