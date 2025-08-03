-------------
--DW LAYER
-------------

USE FF_DM
GO

-----------------------


CREATE TABLE FF_DM.dbo.DM_FactSalesOrder
(
	ID BIGINT IDENTITY(1,1),
	SalesOrderID INT,
	OrderDate DATE,
	TotalDue MONEY,
	OnlineOrderFlag INT,
	SalesOrderDetailID INT,
	OrderQty INT,
	ProductID INT,
	DimDateID INT,
	DimSpecialOfferID INT,
	DimAddressID INT,
	DimCreditCardID INT,
	DimSalesReasonID INT,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DM.dbo.DM_DimSalesReason 
(
	DimSalesReasonID INT IDENTITY(1,1),
	SalesReasonID INT, 
	SalesReasonName VARCHAR(30),
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DM.dbo.DM_DimCreditCard
(
	DimCreditCard INT IDENTITY(1,1),
	CreditCardID INT,
	CardType VARCHAR(20),
	ExpMonth INT,
	ExpYear INT,
	LoadTimeStamp TIMESTAMP
)


CREATE TABLE FF_DM.dbo.DM_DimAddress
(
	DimAddressID INT IDENTITY(1,1),
	AddressID INT,
	AddressLine1 VARCHAR(256),
	AddressLine2 VARCHAR(256),
	City VARCHAR(50),
	StateProvinceName VARCHAR(100),
	TaxRate DECIMAL,
	TaxRateName VARCHAR(100),
	TerritoryName VARCHAR(30),
	CountryRegionName VARCHAR(100),
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DM.dbo.DM_DimSpecialOffer
(
	DimSpecialOfferID INT IDENTITY(1,1),
	SpecialOfferID INT, 
	Description VARCHAR(100),
	DiscountPct DECIMAL,
	StartDate DATE,
	EndDate DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DM.dbo.DimDate (
	DimDateID INT,
	Date DATE,
	Day INT,
	MONTH INT,
	QUARTER INT,
	YEAR INT,
	LoadTimeStamp TIMESTAMP
);

