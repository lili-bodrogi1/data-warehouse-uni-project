
CREATE OR ALTER VIEW dbo.DimAddressView AS 
SELECT 
	a.AddressID "AddressID", 
	a.AddressLine1 "AddressLine1", 
	a.AddressLine2 "AddressLine2", 
	a.City "City", 
	p.Name "StateProvinceName", 
	tr.TaxRate "TaxRate", 
	tr.Name "TaxRateName", 
	t.Name "TerritoryName", 
	r.Name "CountryRegionName"	
FROM FF_DW.dbo.STA_Address a
inner join FF_DW.dbo.STA_StateProvince p on a.StateProvinceID=p.StateProvinceID
inner join FF_DW.dbo.STA_CountryRegion r on p.CountryRegionCode=r.CountryRegionCode
inner join FF_DW.dbo.STA_SalesTerritory t on p.TerritoryID=t.TerritoryID
left join FF_DW.dbo.STA_SalesTaxRate tr on p.StateProvinceID=tr.StateProvinceID
WHERE a.ValidTo IS NULL;



CREATE OR ALTER VIEW dbo.DimSalesReason AS 
SELECT 
	r.SalesReasonID "SalesReasonID",
	r.Name "Name"
FROM FF_DW.dbo.STA_SalesReason r
WHERE r.ValidTo IS NULL;



CREATE OR ALTER VIEW dbo.DimCreditCard AS 
SELECT 
	c.CreditCardID "CreditCardID",
	c.CardType "CardType",
	c.ExpMonth "ExpMonth",
	c.ExpYear "ExpYear"
FROM FF_DW.dbo.STA_CreditCard c
WHERE c.ValidTo IS NULL;



CREATE OR ALTER VIEW dbo.DimSpecialOffer AS 
SELECT 
	o.SpecialOfferID "SpecialOfferID",
	o.Description "Description",
	o.DiscountPct "DiscountPct",
	o.StartDate "StartDate",
	o.EndDate "EndDate"
FROM FF_DW.dbo.STA_SpecialOffer o
WHERE o.ValidTo IS NULL;



CREATE OR ALTER VIEW dbo.FactSalesOrder AS 
SELECT 
	ROW_NUMBER() over(order by h.SalesOrderID, d.SalesOrderDetailID) "ID",
	h.SalesOrderID "SalesOrderID",
	hsr.SalesReasonID "SalesReasonID",
	h.OrderDate "OrderDate",
	h.CreditCardID "CreditCardID",
	h.TotalDue "TotalDue",
	h.ShipToAddressID "ShipToAddressID",
	d.SpecialOfferID "SpecialOfferID",
	d.OrderQty "OrderQty",
	d.ProductID "ProductID",
	d.SalesOrderDetailID "SalesOrderDetailID",
	h.OnlineOrderFlag "OnlineOrderFlag"
FROM FF_DW.dbo.STA_SalesOrderHeader h
inner join FF_DW.dbo.STA_SalesOrderDetail d on h.SalesOrderID=d.SalesOrderID
left join FF_DW.dbo.STA_SalesOrderHeaderSalesReason hsr on h.SalesOrderID=hsr.SalesOrderID
WHERE hsr.ValidTo IS NULL;