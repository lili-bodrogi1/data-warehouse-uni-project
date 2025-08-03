-------------
--DW LAYER
-------------

USE FF_DW
GO

-----------------------


CREATE TABLE FF_DW.dbo.STA_SalesOrderHeaderSalesReason
(
	SalesOrderID INT,
	SalesReasonID INT,
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_SalesReason
(
	SalesReasonID INT, 
	Name VARCHAR(30),
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_SalesOrderHeader
(
	SalesOrderID INT,
	OrderDate DATE,
	CreditCardID INT,
	TotalDue MONEY,
	Freight MONEY,
	ShipToAddressID INT,
	OnlineOrderFlag INT,
	--CustomerID VARCHAR(256),
	TerritoryID INT,
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_CreditCard
(
	CreditCardID INT,
	CardType VARCHAR(20), 
	ExpMonth INT,
	ExpYear INT,
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_SalesOrderDetail
(
	SalesOrderID INT,
	SalesOrderDetailID INT,
	OrderQty INT,
	SpecialOfferID INT,
	ProductID INT,
	UnitPrice MONEY,
	LineTotal MONEY,
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_Address
(
	AddressID INT,
	AddressLine1 VARCHAR(256),
	AddressLine2 VARCHAR(256),
	City VARCHAR(50),
	StateProvinceID INT,
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_SpecialOffer
(
	SpecialOfferID INT, 
	Description VARCHAR(100),
	DiscountPct DECIMAL,
	StartDate DATE,
	EndDate DATE,
	ValidFrom DATE, --StartDate
	ValidTo DATE, --EndDate
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_StateProvince
(
	StateProvinceID INT,
	CountryRegionCode CHAR(2),
	Name VARCHAR(100),
	TerritoryID INT,
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_SalesTaxRate
(
	TaxRate DECIMAL,
	StateProvinceID INT,
	Name VARCHAR(100),
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_SalesTerritory
(
	TerritoryID INT,
	Name VARCHAR(30),
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)

CREATE TABLE FF_DW.dbo.STA_CountryRegion
(
	CountryRegionCode CHAR(2),
	Name VARCHAR(100),
	ValidFrom DATE,
	ValidTo DATE,
	LoadTimeStamp TIMESTAMP
)