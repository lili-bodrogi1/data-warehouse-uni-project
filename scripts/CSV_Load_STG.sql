
select SalesOrderID ,
	SalesReasonID 
from Sales.SalesOrderHeaderSalesReason

select SalesReasonID ,
	Name
from Sales.SalesReason

select SalesOrderID ,
	OrderDate ,
	CreditCardID ,
	TotalDue ,
	Freight ,
	ShipToAddressID ,
	OnlineOrderFlag ,
	--CustomerID ,
	TerritoryID 
from Sales.SalesOrderHeader

select CreditCardID ,
	CardType ,
	ExpMonth ,
	ExpYear 
from Sales.CreditCard

select SalesOrderID ,
	SalesOrderDetailID ,
	OrderQty ,
	SpecialOfferID ,
	ProductID ,
	UnitPrice ,
	LineTotal 
from Sales.SalesOrderDetail

select AddressID ,
	AddressLine1 ,
	AddressLine2,
	City ,
	StateProvinceID 
from Person.Address

select SpecialOfferID ,
	Description ,
	DiscountPct ,
	StartDate ,
	EndDate 
from Sales.SpecialOffer

select StateProvinceID,
	CountryRegionCode ,
	Name ,
	TerritoryID 
from Person.StateProvince

select TaxRate ,
	StateProvinceID ,
	Name 
from Sales.SalesTaxRate

select TerritoryID ,
	Name 
from Sales.SalesTerritory

select CountryRegionCode ,
	Name 
from Person.CountryRegion