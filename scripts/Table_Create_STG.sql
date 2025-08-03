
------------
--CREATE DBS
------------

CREATE DATABASE FF_STAGE COLLATE SQL_Latin1_General_CP1_CI_AS
GO

CREATE DATABASE FF_DW COLLATE SQL_Latin1_General_CP1_CI_AS
GO

CREATE DATABASE FF_DM COLLATE SQL_Latin1_General_CP1_CI_AS
GO


-------------
--STAGE LAYER
-------------

USE FF_STAGE
GO

-----------------------
/*CREATE TABLE FF_STAGE.dbo.STA_Store
(
	BusinessEntityID VARCHAR(256),
	Name VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_Customer
(
	CustomerID VARCHAR(256),
	StoreID VARCHAR(256),
	TerritoryID VARCHAR(256)
)*/

CREATE TABLE FF_STAGE.dbo.STA_SalesOrderHeaderSalesReason
(
	SalesOrderID VARCHAR(256),
	SalesReasonID VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_SalesReason
(
	SalesReasonID VARCHAR(256),
	Name VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_SalesOrderHeader
(
	SalesOrderID VARCHAR(256),
	OrderDate VARCHAR(256),
	CreditCardID VARCHAR(256),
	TotalDue VARCHAR(256),
	Freight VARCHAR(256),
	ShipToAddressID VARCHAR(256),
	OnlineOrderFlag VARCHAR(256),
	--CustomerID VARCHAR(256),
	TerritoryID VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_CreditCard
(
	CreditCardID VARCHAR(256),
	CardType VARCHAR(256),
	ExpMonth VARCHAR(256),
	ExpYear VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_SalesOrderDetail
(
	SalesOrderID VARCHAR(256),
	SalesOrderDetailID VARCHAR(256),
	OrderQty VARCHAR(256),
	SpecialOfferID VARCHAR(256),
	ProductID VARCHAR(256),
	UnitPrice VARCHAR(256),
	LineTotal VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_Address
(
	AddressID VARCHAR(256),
	AddressLine1 VARCHAR(256),
	AddressLine2 VARCHAR(256),
	City VARCHAR(256),
	StateProvinceID VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_SpecialOffer
(
	SpecialOfferID VARCHAR(256),
	Description VARCHAR(256),
	DiscountPct VARCHAR(256),
	StartDate VARCHAR(256),
	EndDate VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_StateProvince
(
	StateProvinceID VARCHAR(256),
	CountryRegionCode VARCHAR(256),
	Name VARCHAR(256),
	TerritoryID VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_SalesTaxRate
(
	TaxRate VARCHAR(256),
	StateProvinceID VARCHAR(256),
	Name VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_SalesTerritory
(
	TerritoryID VARCHAR(256),
	Name VARCHAR(256)
)

CREATE TABLE FF_STAGE.dbo.STA_CountryRegion
(
	CountryRegionCode VARCHAR(256),
	Name VARCHAR(256)
)