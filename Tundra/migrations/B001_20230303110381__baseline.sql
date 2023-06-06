SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[CustomerDemographics]'
GO
CREATE TABLE [dbo].[CustomerDemographics]
(
[CustomerTypeID] [nchar] (10) NOT NULL,
[CustomerDesc] [ntext] NULL
)
GO
PRINT N'Creating primary key [PK_CustomerDemographics] on [dbo].[CustomerDemographics]'
GO
ALTER TABLE [dbo].[CustomerDemographics] ADD CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY NONCLUSTERED ([CustomerTypeID])
GO
PRINT N'Creating [dbo].[CustomerCustomerDemo]'
GO
CREATE TABLE [dbo].[CustomerCustomerDemo]
(
[CustomerID] [nchar] (5) NOT NULL,
[CustomerTypeID] [nchar] (10) NOT NULL
)
GO
PRINT N'Creating primary key [PK_CustomerCustomerDemo] on [dbo].[CustomerCustomerDemo]'
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] ADD CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED ([CustomerID], [CustomerTypeID])
GO
PRINT N'Creating [dbo].[Customers]'
GO
CREATE TABLE [dbo].[Customers]
(
[CustomerID] [nchar] (5) NOT NULL,
[CompanyName] [nvarchar] (40) NOT NULL,
[ContactName] [nvarchar] (30) NULL,
[ContactTitle] [nvarchar] (30) NULL,
[Address] [nvarchar] (60) NULL,
[City] [nvarchar] (15) NULL,
[Region] [nvarchar] (15) NULL,
[PostalCode] [nvarchar] (10) NULL,
[Country] [nvarchar] (15) NULL,
[Phone] [nvarchar] (24) NULL,
[Fax] [nvarchar] (24) NULL
)
GO
PRINT N'Creating primary key [PK_Customers] on [dbo].[Customers]'
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID])
GO
PRINT N'Creating index [City] on [dbo].[Customers]'
GO
CREATE NONCLUSTERED INDEX [City] ON [dbo].[Customers] ([City])
GO
PRINT N'Creating index [CompanyName] on [dbo].[Customers]'
GO
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Customers] ([CompanyName])
GO
PRINT N'Creating index [PostalCode] on [dbo].[Customers]'
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Customers] ([PostalCode])
GO
PRINT N'Creating index [Region] on [dbo].[Customers]'
GO
CREATE NONCLUSTERED INDEX [Region] ON [dbo].[Customers] ([Region])
GO
PRINT N'Creating [dbo].[Employees]'
GO
CREATE TABLE [dbo].[Employees]
(
[EmployeeID] [int] NOT NULL IDENTITY(1, 1),
[LastName] [nvarchar] (20) NOT NULL,
[FirstName] [nvarchar] (10) NOT NULL,
[Title] [nvarchar] (30) NULL,
[TitleOfCourtesy] [nvarchar] (25) NULL,
[BirthDate] [datetime] NULL,
[HireDate] [datetime] NULL,
[Address] [nvarchar] (60) NULL,
[City] [nvarchar] (15) NULL,
[Region] [nvarchar] (15) NULL,
[PostalCode] [nvarchar] (10) NULL,
[Country] [nvarchar] (15) NULL,
[HomePhone] [nvarchar] (24) NULL,
[Extension] [nvarchar] (4) NULL,
[Photo] [image] NULL,
[Notes] [ntext] NULL,
[ReportsTo] [int] NULL,
[PhotoPath] [nvarchar] (255) NULL,
[Email] [nvarchar] (255) NULL
)
GO
PRINT N'Creating primary key [PK_Employees] on [dbo].[Employees]'
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID])
GO
PRINT N'Creating index [LastName] on [dbo].[Employees]'
GO
CREATE NONCLUSTERED INDEX [LastName] ON [dbo].[Employees] ([LastName])
GO
PRINT N'Creating index [PostalCode] on [dbo].[Employees]'
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Employees] ([PostalCode])
GO
PRINT N'Creating [dbo].[EmployeeTerritories]'
GO
CREATE TABLE [dbo].[EmployeeTerritories]
(
[EmployeeID] [int] NOT NULL,
[TerritoryID] [nvarchar] (20) NOT NULL
)
GO
PRINT N'Creating primary key [PK_EmployeeTerritories] on [dbo].[EmployeeTerritories]'
GO
ALTER TABLE [dbo].[EmployeeTerritories] ADD CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY NONCLUSTERED ([EmployeeID], [TerritoryID])
GO
PRINT N'Creating [dbo].[Territories]'
GO
CREATE TABLE [dbo].[Territories]
(
[TerritoryID] [nvarchar] (20) NOT NULL,
[TerritoryDescription] [nchar] (50) NOT NULL,
[RegionID] [int] NOT NULL,
[RegionManager] [nvarchar] (50) NULL
)
GO
PRINT N'Creating primary key [PK_Territories] on [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED ([TerritoryID])
GO
PRINT N'Creating [dbo].[Orders]'
GO
CREATE TABLE [dbo].[Orders]
(
[OrderID] [int] NOT NULL IDENTITY(1, 1),
[CustomerID] [nchar] (5) NULL,
[EmployeeID] [int] NULL,
[OrderDate] [datetime] NULL,
[RequiredDate] [datetime] NULL,
[ShippedDate] [datetime] NULL,
[ShipVia] [int] NULL,
[Freight] [money] NULL CONSTRAINT [DF_Orders_Freight] DEFAULT ((0)),
[ShipName] [nvarchar] (40) NULL,
[ShipAddress] [nvarchar] (60) NULL,
[ShipCity] [nvarchar] (15) NULL,
[ShipRegion] [nvarchar] (15) NULL,
[ShipPostalCode] [nvarchar] (10) NULL,
[ShipCountry] [nvarchar] (15) NULL
)
GO
PRINT N'Creating primary key [PK_Orders] on [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID])
GO
PRINT N'Creating index [CustomerID] on [dbo].[Orders]'
GO
CREATE NONCLUSTERED INDEX [CustomerID] ON [dbo].[Orders] ([CustomerID])
GO
PRINT N'Creating index [CustomersOrders] on [dbo].[Orders]'
GO
CREATE NONCLUSTERED INDEX [CustomersOrders] ON [dbo].[Orders] ([CustomerID])
GO
PRINT N'Creating index [EmployeeID] on [dbo].[Orders]'
GO
CREATE NONCLUSTERED INDEX [EmployeeID] ON [dbo].[Orders] ([EmployeeID])
GO
PRINT N'Creating index [EmployeesOrders] on [dbo].[Orders]'
GO
CREATE NONCLUSTERED INDEX [EmployeesOrders] ON [dbo].[Orders] ([EmployeeID])
GO
PRINT N'Creating index [OrderDate] on [dbo].[Orders]'
GO
CREATE NONCLUSTERED INDEX [OrderDate] ON [dbo].[Orders] ([OrderDate])
GO
PRINT N'Creating index [ShippedDate] on [dbo].[Orders]'
GO
CREATE NONCLUSTERED INDEX [ShippedDate] ON [dbo].[Orders] ([ShippedDate])
GO
PRINT N'Creating index [ShipPostalCode] on [dbo].[Orders]'
GO
CREATE NONCLUSTERED INDEX [ShipPostalCode] ON [dbo].[Orders] ([ShipPostalCode])
GO
PRINT N'Creating index [ShippersOrders] on [dbo].[Orders]'
GO
CREATE NONCLUSTERED INDEX [ShippersOrders] ON [dbo].[Orders] ([ShipVia])
GO
PRINT N'Creating [dbo].[Order Details]'
GO
CREATE TABLE [dbo].[Order Details]
(
[OrderID] [int] NOT NULL,
[ProductID] [int] NOT NULL,
[UnitPrice] [money] NOT NULL CONSTRAINT [DF_Order_Details_UnitPrice] DEFAULT ((0)),
[Quantity] [smallint] NOT NULL CONSTRAINT [DF_Order_Details_Quantity] DEFAULT ((1)),
[Discount] [real] NOT NULL CONSTRAINT [DF_Order_Details_Discount] DEFAULT ((0))
)
GO
PRINT N'Creating primary key [PK_Order_Details] on [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED ([OrderID], [ProductID])
GO
PRINT N'Creating index [OrderID] on [dbo].[Order Details]'
GO
CREATE NONCLUSTERED INDEX [OrderID] ON [dbo].[Order Details] ([OrderID])
GO
PRINT N'Creating index [OrdersOrder_Details] on [dbo].[Order Details]'
GO
CREATE NONCLUSTERED INDEX [OrdersOrder_Details] ON [dbo].[Order Details] ([OrderID])
GO
PRINT N'Creating index [ProductID] on [dbo].[Order Details]'
GO
CREATE NONCLUSTERED INDEX [ProductID] ON [dbo].[Order Details] ([ProductID])
GO
PRINT N'Creating index [ProductsOrder_Details] on [dbo].[Order Details]'
GO
CREATE NONCLUSTERED INDEX [ProductsOrder_Details] ON [dbo].[Order Details] ([ProductID])
GO
PRINT N'Creating [dbo].[Products]'
GO
CREATE TABLE [dbo].[Products]
(
[ProductID] [int] NOT NULL IDENTITY(1, 1),
[ProductName] [nvarchar] (40) NOT NULL,
[SupplierID] [int] NULL,
[CategoryID] [int] NULL,
[QuantityPerUnit] [nvarchar] (20) NULL,
[UnitPrice] [money] NULL CONSTRAINT [DF_Products_UnitPrice] DEFAULT ((0)),
[UnitsInStock] [smallint] NULL CONSTRAINT [DF_Products_UnitsInStock] DEFAULT ((0)),
[UnitsOnOrder] [smallint] NULL CONSTRAINT [DF_Products_UnitsOnOrder] DEFAULT ((0)),
[ReorderLevel] [smallint] NULL CONSTRAINT [DF_Products_ReorderLevel] DEFAULT ((0)),
[Discontinued] [bit] NOT NULL CONSTRAINT [DF_Products_Discontinued] DEFAULT ((0)),
[ProductIDCategory] [nvarchar] (50) NULL
)
GO
PRINT N'Creating primary key [PK_Products] on [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductID])
GO
PRINT N'Creating index [CategoriesProducts] on [dbo].[Products]'
GO
CREATE NONCLUSTERED INDEX [CategoriesProducts] ON [dbo].[Products] ([CategoryID])
GO
PRINT N'Creating index [CategoryID] on [dbo].[Products]'
GO
CREATE NONCLUSTERED INDEX [CategoryID] ON [dbo].[Products] ([CategoryID])
GO
PRINT N'Creating index [ProductName] on [dbo].[Products]'
GO
CREATE NONCLUSTERED INDEX [ProductName] ON [dbo].[Products] ([ProductName])
GO
PRINT N'Creating index [SupplierID] on [dbo].[Products]'
GO
CREATE NONCLUSTERED INDEX [SupplierID] ON [dbo].[Products] ([SupplierID])
GO
PRINT N'Creating index [SuppliersProducts] on [dbo].[Products]'
GO
CREATE NONCLUSTERED INDEX [SuppliersProducts] ON [dbo].[Products] ([SupplierID])
GO
PRINT N'Creating [dbo].[Shippers]'
GO
CREATE TABLE [dbo].[Shippers]
(
[ShipperID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (40) NOT NULL,
[Phone] [nvarchar] (24) NULL
)
GO
PRINT N'Creating primary key [PK_Shippers] on [dbo].[Shippers]'
GO
ALTER TABLE [dbo].[Shippers] ADD CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED ([ShipperID])
GO
PRINT N'Creating [dbo].[Categories]'
GO
CREATE TABLE [dbo].[Categories]
(
[CategoryID] [int] NOT NULL IDENTITY(1, 1),
[CategoryName] [nvarchar] (15) NOT NULL,
[Description] [ntext] NULL,
[Picture] [image] NULL,
[ProductCode] [int] NULL
)
GO
PRINT N'Creating primary key [PK_Categories] on [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
GO
PRINT N'Creating index [CategoryName] on [dbo].[Categories]'
GO
CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories] ([CategoryName])
GO
PRINT N'Creating [dbo].[Suppliers]'
GO
CREATE TABLE [dbo].[Suppliers]
(
[SupplierID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (40) NOT NULL,
[ContactName] [nvarchar] (30) NULL,
[ContactTitle] [nvarchar] (30) NULL,
[Address] [nvarchar] (60) NULL,
[City] [nvarchar] (15) NULL,
[Region] [nvarchar] (15) NULL,
[PostalCode] [nvarchar] (10) NULL,
[Country] [nvarchar] (15) NULL,
[Phone] [nvarchar] (24) NULL,
[Fax] [nvarchar] (24) NULL,
[HomePage] [ntext] NULL
)
GO
PRINT N'Creating primary key [PK_Suppliers] on [dbo].[Suppliers]'
GO
ALTER TABLE [dbo].[Suppliers] ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SupplierID])
GO
PRINT N'Creating index [CompanyName] on [dbo].[Suppliers]'
GO
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Suppliers] ([CompanyName])
GO
PRINT N'Creating index [PostalCode] on [dbo].[Suppliers]'
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Suppliers] ([PostalCode])
GO
PRINT N'Creating [dbo].[Region]'
GO
CREATE TABLE [dbo].[Region]
(
[RegionID] [int] NOT NULL,
[RegionDescription] [nchar] (50) NOT NULL
)
GO
PRINT N'Creating primary key [PK_Region] on [dbo].[Region]'
GO
ALTER TABLE [dbo].[Region] ADD CONSTRAINT [PK_Region] PRIMARY KEY NONCLUSTERED ([RegionID])
GO
PRINT N'Creating [dbo].[Customer and Suppliers by City]'
GO
create view [dbo].[Customer and Suppliers by City] AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
--ORDER BY City, CompanyName
GO
PRINT N'Creating [dbo].[Alphabetical list of products]'
GO
create view [dbo].[Alphabetical list of products] AS
SELECT Products.*, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE (((Products.Discontinued)=0))
GO
PRINT N'Creating [dbo].[Current Product List]'
GO
create view [dbo].[Current Product List] AS
SELECT Product_List.ProductID, Product_List.ProductName
FROM Products AS Product_List
WHERE (((Product_List.Discontinued)=0))
--ORDER BY Product_List.ProductName
GO
PRINT N'Creating [dbo].[Orders Qry]'
GO
create view [dbo].[Orders Qry] AS
SELECT Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, Orders.OrderDate, Orders.RequiredDate, 
	Orders.ShippedDate, Orders.ShipVia, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, 
	Orders.ShipRegion, Orders.ShipPostalCode, Orders.ShipCountry, 
	Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GO
PRINT N'Creating [dbo].[Products Above Average Price]'
GO
create view [dbo].[Products Above Average Price] AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products)
--ORDER BY Products.UnitPrice DESC
GO
PRINT N'Creating [dbo].[Products by Category]'
GO
create view [dbo].[Products by Category] AS
SELECT Categories.CategoryName, Products.ProductName, Products.QuantityPerUnit, Products.UnitsInStock, Products.Discontinued
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued <> 1
--ORDER BY Categories.CategoryName, Products.ProductName
GO
PRINT N'Creating [dbo].[Quarterly Orders]'
GO
create view [dbo].[Quarterly Orders] AS
SELECT DISTINCT Customers.CustomerID, Customers.CompanyName, Customers.City, Customers.Country
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GO
PRINT N'Creating [dbo].[Invoices]'
GO
create view [dbo].[Invoices] AS
SELECT Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, Orders.ShipRegion, Orders.ShipPostalCode, 
	Orders.ShipCountry, Orders.CustomerID, Customers.CompanyName AS CustomerName, Customers.Address, Customers.City, 
	Customers.Region, Customers.PostalCode, Customers.Country, 
	(FirstName + ' ' + LastName) AS Salesperson, 
	Orders.OrderID, Orders.OrderDate, Orders.RequiredDate, Orders.ShippedDate, Shippers.CompanyName As ShipperName, 
	"Order Details".ProductID, Products.ProductName, "Order Details".UnitPrice, "Order Details".Quantity, 
	"Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice, Orders.Freight
FROM 	Shippers INNER JOIN 
		(Products INNER JOIN 
			(
				(Employees INNER JOIN 
					(Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID) 
				ON Employees.EmployeeID = Orders.EmployeeID) 
			INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
		ON Products.ProductID = "Order Details".ProductID) 
	ON Shippers.ShipperID = Orders.ShipVia
GO
PRINT N'Creating [dbo].[Order Details Extended]'
GO
create view [dbo].[Order Details Extended] AS
SELECT "Order Details".OrderID, "Order Details".ProductID, Products.ProductName, 
	"Order Details".UnitPrice, "Order Details".Quantity, "Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice
FROM Products INNER JOIN "Order Details" ON Products.ProductID = "Order Details".ProductID
--ORDER BY "Order Details".OrderID
GO
PRINT N'Creating [dbo].[Order Subtotals]'
GO
create view [dbo].[Order Subtotals] AS
SELECT "Order Details".OrderID, Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM "Order Details"
GROUP BY "Order Details".OrderID
GO
PRINT N'Creating [dbo].[Product Sales for 1997]'
GO
create view [dbo].[Product Sales for 1997] AS
SELECT Categories.CategoryName, Products.ProductName, 
Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ProductSales
FROM (Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID) 
	INNER JOIN (Orders 
		INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
	ON Products.ProductID = "Order Details".ProductID
WHERE (((Orders.ShippedDate) Between '19970101' And '19971231'))
GROUP BY Categories.CategoryName, Products.ProductName
GO
PRINT N'Creating [dbo].[Category Sales for 1997]'
GO
create view [dbo].[Category Sales for 1997] AS
SELECT "Product Sales for 1997".CategoryName, Sum("Product Sales for 1997".ProductSales) AS CategorySales
FROM "Product Sales for 1997"
GROUP BY "Product Sales for 1997".CategoryName
GO
PRINT N'Creating [dbo].[Sales by Category]'
GO
create view [dbo].[Sales by Category] AS
SELECT Categories.CategoryID, Categories.CategoryName, Products.ProductName, 
	Sum("Order Details Extended".ExtendedPrice) AS ProductSales
FROM 	Categories INNER JOIN 
		(Products INNER JOIN 
			(Orders INNER JOIN "Order Details Extended" ON Orders.OrderID = "Order Details Extended".OrderID) 
		ON Products.ProductID = "Order Details Extended".ProductID) 
	ON Categories.CategoryID = Products.CategoryID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GROUP BY Categories.CategoryID, Categories.CategoryName, Products.ProductName
--ORDER BY Products.ProductName
GO
PRINT N'Creating [dbo].[Sales Totals by Amount]'
GO
create view [dbo].[Sales Totals by Amount] AS
SELECT "Order Subtotals".Subtotal AS SaleAmount, Orders.OrderID, Customers.CompanyName, Orders.ShippedDate
FROM 	Customers INNER JOIN 
		(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Customers.CustomerID = Orders.CustomerID
WHERE ("Order Subtotals".Subtotal >2500) AND (Orders.ShippedDate BETWEEN '19970101' And '19971231')
GO
PRINT N'Creating [dbo].[Summary of Sales by Quarter]'
GO
create view [dbo].[Summary of Sales by Quarter] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO
PRINT N'Creating [dbo].[Summary of Sales by Year]'
GO
create view [dbo].[Summary of Sales by Year] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO
PRINT N'Creating [dbo].[Ten Most Expensive Products]'
GO
create procedure [dbo].[Ten Most Expensive Products] AS
SET ROWCOUNT 10
SELECT Products.ProductName AS TenMostExpensiveProducts, Products.UnitPrice
FROM Products
ORDER BY Products.UnitPrice DESC
GO
PRINT N'Creating [dbo].[Employee Sales by Country]'
GO
create procedure [dbo].[Employee Sales by Country] 
@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal AS SaleAmount
FROM Employees INNER JOIN 
	(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
GO
PRINT N'Creating [dbo].[Sales by Year]'
GO
create procedure [dbo].[Sales by Year] 
	@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal, DATENAME(yy,ShippedDate) AS Year
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
GO
PRINT N'Creating [dbo].[CustOrdersDetail]'
GO
CREATE PROCEDURE [dbo].[CustOrdersDetail] @OrderID int
AS
SELECT ProductName,
    UnitPrice=ROUND(Od.UnitPrice, 2),
    Quantity,
    Discount=CONVERT(int, Discount * 100), 
    ExtendedPrice=ROUND(CONVERT(money, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, [Order Details] Od
WHERE Od.ProductID = P.ProductID and Od.OrderID = @OrderID
GO
PRINT N'Creating [dbo].[CustOrdersOrders]'
GO
CREATE PROCEDURE [dbo].[CustOrdersOrders] @CustomerID nchar(5)
AS
SELECT OrderID, 
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID
GO
PRINT N'Creating [dbo].[CustOrderHist]'
GO
CREATE PROCEDURE [dbo].[CustOrderHist] @CustomerID nchar(5)
AS
SELECT ProductName, Total=SUM(Quantity)
FROM Products P, [Order Details] OD, Orders O, Customers C
WHERE C.CustomerID = @CustomerID
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName
GO
PRINT N'Creating [dbo].[SalesByCategory]'
GO
CREATE PROCEDURE [dbo].[SalesByCategory]
    @CategoryName nvarchar(15), @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear != '1996' AND @OrdYear != '1997' AND @OrdYear != '1998' 
BEGIN
	SELECT @OrdYear = '1998'
END

SELECT ProductName,
	TotalPurchase=ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0)
FROM [Order Details] OD, Orders O, Products P, Categories C
WHERE OD.OrderID = O.OrderID 
	AND OD.ProductID = P.ProductID 
	AND P.CategoryID = C.CategoryID
	AND C.CategoryName = @CategoryName
	AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
GROUP BY ProductName
ORDER BY ProductName
GO
PRINT N'Adding constraints to [dbo].[Employees]'
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [CK_Birthdate] CHECK (([BirthDate]<getdate()))
GO
PRINT N'Adding constraints to [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [CK_UnitPrice] CHECK (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [CK_Quantity] CHECK (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [CK_Discount] CHECK (([Discount]>=(0) AND [Discount]<=(1)))
GO
PRINT N'Adding constraints to [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [CK_Products_UnitPrice] CHECK (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [CK_UnitsInStock] CHECK (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [CK_UnitsOnOrder] CHECK (([UnitsOnOrder]>=(0)))
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [CK_ReorderLevel] CHECK (([ReorderLevel]>=(0)))
GO
PRINT N'Adding foreign keys to [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_Products_Categories] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY ([SupplierID]) REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
PRINT N'Adding foreign keys to [dbo].[CustomerCustomerDemo]'
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] ADD CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] ADD CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY ([CustomerTypeID]) REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID])
GO
PRINT N'Adding foreign keys to [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY ([ShipVia]) REFERENCES [dbo].[Shippers] ([ShipperID])
GO
PRINT N'Adding foreign keys to [dbo].[EmployeeTerritories]'
GO
ALTER TABLE [dbo].[EmployeeTerritories] ADD CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[EmployeeTerritories] ADD CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY ([TerritoryID]) REFERENCES [dbo].[Territories] ([TerritoryID])
GO
PRINT N'Adding foreign keys to [dbo].[Employees]'
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [FK_Employees_Employees] FOREIGN KEY ([ReportsTo]) REFERENCES [dbo].[Employees] ([EmployeeID])
GO
PRINT N'Adding foreign keys to [dbo].[Order Details]'
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order Details] ADD CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
GO
PRINT N'Adding foreign keys to [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [FK_Territories_Region] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
GO
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Add 830 rows to [dbo].[Orders]')
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10248, 32.3800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10249, 11.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10250, 65.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10251, 41.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10252, 51.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10253, 58.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10254, 22.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10255, 148.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10256, 13.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10257, 81.9100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10258, 140.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10259, 3.2500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10260, 55.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10261, 3.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10262, 48.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10263, 146.0600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10264, 3.6700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10265, 55.2800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10266, 25.7300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10267, 208.5800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10268, 66.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10269, 4.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10270, 136.5400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10271, 4.5400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10272, 98.0300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10273, 76.0700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10274, 6.0100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10275, 26.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10276, 13.8400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10277, 125.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10278, 92.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10279, 25.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10280, 8.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10281, 2.9400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10282, 12.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10283, 84.8100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10284, 76.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10285, 76.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10286, 229.2400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10287, 12.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10288, 7.4500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10289, 22.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10290, 79.7000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10291, 6.4000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10292, 1.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10293, 21.1800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10294, 147.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10295, 1.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10296, 0.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10297, 5.7400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10298, 168.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10299, 29.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10300, 17.6800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10301, 45.0800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10302, 6.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10303, 107.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10304, 63.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10305, 257.6200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10306, 7.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10307, 0.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10308, 1.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10309, 47.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10310, 17.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10311, 24.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10312, 40.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10313, 1.9600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10314, 74.1600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10315, 41.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10316, 150.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10317, 12.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10318, 4.7300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10319, 64.5000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10320, 34.5700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10321, 3.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10322, 0.4000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10323, 4.8800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10324, 214.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10325, 64.8600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10326, 77.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10327, 63.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10328, 87.0300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10329, 191.6700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10330, 12.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10331, 10.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10332, 52.8400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10333, 0.5900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10334, 8.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10335, 42.1100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10336, 15.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10337, 108.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10338, 84.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10339, 15.6600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10340, 166.3100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10341, 26.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10342, 54.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10343, 110.3700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10344, 23.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10345, 249.0600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10346, 142.0800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10347, 3.1000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10348, 0.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10349, 8.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10350, 64.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10351, 162.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10352, 1.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10353, 360.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10354, 53.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10355, 41.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10356, 36.7100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10357, 34.8800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10358, 19.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10359, 288.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10360, 131.7000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10361, 183.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10362, 96.0400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10363, 30.5400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10364, 71.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10365, 22.0000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10366, 10.1400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10367, 13.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10368, 101.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10369, 195.6800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10370, 1.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10371, 0.4500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10372, 890.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10373, 124.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10374, 3.9400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10375, 20.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10376, 20.3900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10377, 22.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10378, 5.4400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10379, 45.0300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10380, 35.0300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10381, 7.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10382, 94.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10383, 34.2400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10384, 168.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10385, 30.9600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10386, 13.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10387, 93.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10388, 34.8600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10389, 47.4200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10390, 126.3800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10391, 5.4500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10392, 122.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10393, 126.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10394, 30.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10395, 184.4100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10396, 135.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10397, 60.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10398, 89.1600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10399, 27.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10400, 83.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10401, 12.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10402, 67.8800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10403, 73.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10404, 155.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10405, 34.8200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10406, 108.0400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10407, 91.4800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10408, 11.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10409, 29.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10410, 2.4000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10411, 23.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10412, 3.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10413, 95.6600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10414, 21.4800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10415, 0.2000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10416, 22.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10417, 70.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10418, 17.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10419, 137.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10420, 44.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10421, 99.2300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10422, 3.0200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10423, 24.5000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10424, 370.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10425, 7.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10426, 18.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10427, 31.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10428, 11.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10429, 56.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10430, 458.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10431, 44.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10432, 4.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10433, 73.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10434, 17.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10435, 9.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10436, 156.6600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10437, 19.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10438, 8.2400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10439, 4.0700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10440, 86.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10441, 73.0200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10442, 47.9400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10443, 13.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10444, 3.5000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10445, 9.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10446, 14.6800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10447, 68.6600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10448, 38.8200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10449, 53.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10450, 7.2300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10451, 189.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10452, 140.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10453, 25.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10454, 2.7400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10455, 180.4500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10456, 8.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10457, 11.5700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10458, 147.0600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10459, 25.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10460, 16.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10461, 148.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10462, 6.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10463, 14.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10464, 89.0000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10465, 145.0400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10466, 11.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10467, 4.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10468, 44.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10469, 60.1800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10470, 64.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10471, 45.5900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10472, 4.2000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10473, 16.3700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10474, 83.4900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10475, 68.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10476, 4.4100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10477, 13.0200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10478, 4.8100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10479, 708.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10480, 1.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10481, 64.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10482, 7.4800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10483, 15.2800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10484, 6.8800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10485, 64.4500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10486, 30.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10487, 71.0700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10488, 4.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10489, 5.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10490, 210.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10491, 16.9600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10492, 62.8900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10493, 10.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10494, 65.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10495, 4.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10496, 46.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10497, 36.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10498, 29.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10499, 102.0200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10500, 42.6800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10501, 8.8500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10502, 69.3200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10503, 16.7400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10504, 59.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10505, 7.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10506, 21.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10507, 47.4500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10508, 4.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10509, 0.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10510, 367.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10511, 350.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10512, 3.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10513, 105.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10514, 789.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10515, 204.4700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10516, 62.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10517, 32.0700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10518, 218.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10519, 91.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10520, 13.3700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10521, 17.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10522, 45.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10523, 77.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10524, 244.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10525, 11.0600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10526, 58.5900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10527, 41.9000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10528, 3.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10529, 66.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10530, 339.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10531, 8.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10532, 74.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10533, 188.0400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10534, 27.9400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10535, 15.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10536, 58.8800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10537, 78.8500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10538, 4.8700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10539, 12.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10540, 1007.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10541, 68.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10542, 10.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10543, 48.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10544, 24.9100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10545, 11.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10546, 194.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10547, 178.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10548, 1.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10549, 171.2400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10550, 4.3200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10551, 72.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10552, 83.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10553, 149.4900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10554, 120.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10555, 252.4900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10556, 9.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10557, 96.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10558, 72.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10559, 8.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10560, 36.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10561, 242.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10562, 22.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10563, 60.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10564, 13.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10565, 7.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10566, 88.4000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10567, 33.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10568, 6.5400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10569, 58.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10570, 188.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10571, 26.0600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10572, 116.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10573, 84.8400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10574, 37.6000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10575, 127.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10576, 18.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10577, 25.4100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10578, 29.6000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10579, 13.7300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10580, 75.8900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10581, 3.0100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10582, 27.7100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10583, 7.2800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10584, 59.1400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10585, 13.4100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10586, 0.4800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10587, 62.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10588, 194.6700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10589, 4.4200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10590, 44.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10591, 55.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10592, 32.1000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10593, 174.2000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10594, 5.2400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10595, 96.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10596, 16.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10597, 35.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10598, 44.4200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10599, 29.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10600, 45.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10601, 58.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10602, 2.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10603, 48.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10604, 7.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10605, 379.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10606, 79.4000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10607, 200.2400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10608, 27.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10609, 1.8500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10610, 26.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10611, 80.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10612, 544.0800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10613, 8.1100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10614, 1.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10615, 0.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10616, 116.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10617, 18.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10618, 154.6800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10619, 91.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10620, 0.9400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10621, 23.7300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10622, 50.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10623, 97.1800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10624, 94.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10625, 43.9000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10626, 138.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10627, 107.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10628, 30.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10629, 85.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10630, 32.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10631, 0.8700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10632, 41.3800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10633, 477.9000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10634, 487.3800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10635, 47.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10636, 1.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10637, 201.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10638, 158.4400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10639, 38.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10640, 23.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10641, 179.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10642, 41.8900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10643, 29.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10644, 0.1400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10645, 12.4100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10646, 142.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10647, 45.5400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10648, 14.2500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10649, 6.2000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10650, 176.8100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10651, 20.6000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10652, 7.1400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10653, 93.2500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10654, 55.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10655, 4.4100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10656, 57.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10657, 352.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10658, 364.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10659, 105.8100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10660, 111.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10661, 17.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10662, 1.2800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10663, 113.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10664, 1.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10665, 26.3100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10666, 232.4200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10667, 78.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10668, 47.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10669, 24.3900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10670, 203.4800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10671, 30.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10672, 95.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10673, 22.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10674, 0.9000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10675, 31.8500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10676, 2.0100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10677, 4.0300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10678, 388.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10679, 27.9400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10680, 26.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10681, 76.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10682, 36.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10683, 4.4000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10684, 145.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10685, 33.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10686, 96.5000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10687, 296.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10688, 299.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10689, 13.4200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10690, 15.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10691, 810.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10692, 61.0200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10693, 139.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10694, 398.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10695, 16.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10696, 102.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10697, 45.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10698, 272.4700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10699, 0.5800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10700, 65.1000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10701, 220.3100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10702, 23.9400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10703, 152.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10704, 4.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10705, 3.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10706, 135.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10707, 21.7400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10708, 2.9600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10709, 210.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10710, 4.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10711, 52.4100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10712, 89.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10713, 167.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10714, 24.4900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10715, 63.2000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10716, 22.5700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10717, 59.2500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10718, 170.8800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10719, 51.4400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10720, 9.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10721, 48.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10722, 74.5800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10723, 21.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10724, 57.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10725, 10.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10726, 16.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10727, 89.9000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10728, 58.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10729, 141.0600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10730, 20.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10731, 96.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10732, 16.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10733, 110.1100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10734, 1.6300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10735, 45.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10736, 44.1000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10737, 7.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10738, 2.9100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10739, 11.0800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10740, 81.8800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10741, 10.9600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10742, 243.7300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10743, 23.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10744, 69.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10745, 3.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10746, 31.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10747, 117.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10748, 232.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10749, 61.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10750, 79.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10751, 130.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10752, 1.3900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10753, 7.7000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10754, 2.3800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10755, 16.7100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10756, 73.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10757, 8.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10758, 138.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10759, 11.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10760, 155.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10761, 18.6600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10762, 328.7400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10763, 37.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10764, 145.4500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10765, 42.7400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10766, 157.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10767, 1.5900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10768, 146.3200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10769, 65.0600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10770, 5.3200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10771, 11.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10772, 91.2800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10773, 96.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10774, 48.2000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10775, 20.2500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10776, 351.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10777, 3.0100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10778, 6.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10779, 58.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10780, 42.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10781, 73.1600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10782, 1.1000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10783, 124.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10784, 70.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10785, 1.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10786, 110.8700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10787, 249.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10788, 42.7000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10789, 100.6000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10790, 28.2300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10791, 16.8500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10792, 23.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10793, 4.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10794, 21.4900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10795, 126.6600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10796, 26.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10797, 33.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10798, 2.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10799, 30.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10800, 137.4400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10801, 97.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10802, 257.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10803, 55.2300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10804, 27.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10805, 237.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10806, 22.1100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10807, 1.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10808, 45.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10809, 4.8700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10810, 4.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10811, 31.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10812, 59.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10813, 47.3800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10814, 130.9400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10815, 14.6200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10816, 719.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10817, 306.0700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10818, 65.4800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10819, 19.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10820, 37.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10821, 36.6800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10822, 7.0000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10823, 163.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10824, 1.2300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10825, 79.2500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10826, 7.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10827, 63.5400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10828, 90.8500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10829, 154.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10830, 81.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10831, 72.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10832, 43.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10833, 71.4900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10834, 29.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10835, 69.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10836, 411.8800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10837, 13.3200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10838, 59.2800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10839, 35.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10840, 2.7100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10841, 424.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10842, 54.4200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10843, 9.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10844, 25.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10845, 212.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10846, 56.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10847, 487.5700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10848, 38.2400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10849, 0.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10850, 49.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10851, 160.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10852, 174.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10853, 53.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10854, 100.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10855, 170.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10856, 58.4300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10857, 188.8500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10858, 52.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10859, 76.1000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10860, 19.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10861, 14.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10862, 53.2300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10863, 30.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10864, 3.0400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10865, 348.1400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10866, 109.1100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10867, 1.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10868, 191.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10869, 143.2800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10870, 12.0400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10871, 112.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10872, 175.3200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10873, 0.8200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10874, 19.5800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10875, 32.3700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10876, 60.4200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10877, 38.0600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10878, 46.6900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10879, 8.5000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10880, 88.0100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10881, 2.8400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10882, 23.1000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10883, 0.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10884, 90.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10885, 5.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10886, 4.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10887, 1.2500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10888, 51.8700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10889, 280.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10890, 32.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10891, 20.3700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10892, 120.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10893, 77.7800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10894, 116.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10895, 162.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10896, 32.4500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10897, 603.5400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10898, 1.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10899, 1.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10900, 1.6600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10901, 62.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10902, 44.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10903, 36.7100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10904, 162.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10905, 13.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10906, 26.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10907, 9.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10908, 32.9600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10909, 53.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10910, 38.1100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10911, 38.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10912, 580.9100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10913, 33.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10914, 21.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10915, 3.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10916, 63.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10917, 8.2900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10918, 48.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10919, 19.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10920, 29.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10921, 176.4800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10922, 62.7400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10923, 68.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10924, 151.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10925, 2.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10926, 39.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10927, 19.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10928, 1.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10929, 33.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10930, 15.5500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10931, 13.6000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10932, 134.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10933, 54.1500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10934, 32.0100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10935, 47.5900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10936, 33.6800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10937, 31.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10938, 31.8900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10939, 76.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10940, 19.7700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10941, 400.8100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10942, 17.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10943, 2.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10944, 52.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10945, 10.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10946, 27.2000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10947, 3.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10948, 23.3900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10949, 74.4400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10950, 2.5000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10951, 30.8500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10952, 40.4200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10953, 23.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10954, 27.9100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10955, 3.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10956, 44.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10957, 105.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10958, 49.5600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10959, 4.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10960, 2.0800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10961, 104.4700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10962, 275.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10963, 2.7000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10964, 87.3800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10965, 144.3800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10966, 27.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10967, 62.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10968, 74.6000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10969, 0.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10970, 16.1600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10971, 121.8200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10972, 0.0200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10973, 15.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10974, 12.9600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10975, 32.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10976, 37.9700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10977, 208.5000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10978, 32.8200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10979, 353.0700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10980, 1.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10981, 193.3700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10982, 14.0100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10983, 657.5400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10984, 211.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10985, 91.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10986, 217.8600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10987, 185.4800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10988, 61.1400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10989, 34.7600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10990, 117.6100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10991, 38.5100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10992, 4.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10993, 8.8100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10994, 65.5300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10995, 46.0000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10996, 1.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10997, 73.9100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10998, 20.3100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (10999, 96.3500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11000, 55.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11001, 197.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11002, 141.1600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11003, 14.9100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11004, 44.8400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11005, 0.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11006, 25.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11007, 202.2400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11008, 79.4600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11009, 59.1100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11010, 28.7100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11011, 1.2100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11012, 242.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11013, 32.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11014, 23.6000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11015, 4.6200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11016, 33.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11017, 754.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11018, 11.6500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11019, 3.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11020, 43.3000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11021, 297.1800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11022, 6.2700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11023, 123.8300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11024, 74.3600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11025, 29.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11026, 47.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11027, 52.5200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11028, 29.5900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11029, 47.8400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11030, 830.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11031, 227.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11032, 606.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11033, 84.7400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11034, 40.3200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11035, 0.1700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11036, 149.4700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11037, 3.2000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11038, 29.5900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11039, 65.0000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11040, 18.8400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11041, 48.2200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11042, 29.9900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11043, 8.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11044, 8.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11045, 70.5800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11046, 71.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11047, 46.6200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11048, 24.1200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11049, 8.3400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11050, 59.4100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11051, 2.7900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11052, 67.2600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11053, 53.0500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11054, 0.3300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11055, 120.9200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11056, 278.9600)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11057, 4.1300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11058, 31.1400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11059, 85.8000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11060, 10.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11061, 14.0100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11062, 29.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11063, 81.7300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11064, 30.0900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11065, 12.9100)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11066, 44.7200)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11067, 7.9800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11068, 81.7500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11069, 15.6700)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11070, 136.0000)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11071, 0.9300)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11072, 258.6400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11073, 24.9500)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11074, 18.4400)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11075, 6.1900)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11076, 38.2800)
INSERT INTO [dbo].[Orders] ([OrderID], [Freight]) VALUES (11077, 8.5300)
SET IDENTITY_INSERT [dbo].[Orders] OFF


