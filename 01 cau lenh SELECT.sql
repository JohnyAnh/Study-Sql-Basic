--Viet cau lenh SQL lay ra ten cua tat ca cac san pham
SELECT ProductName
FROM [dbo].[Products];

--Viet cau lenh SQL lay ra ten SAN PHAM,
-- GIABAN TREN MOI DON VI
SELECT [ProductName],[UnitPrice],[QuantityPerUnit]
FROM [dbo].[Products];

--Viet cau lenh SQL lay ra ten Cong ty cua khach hang,
-- va quoc gia cua khach hang do
SELECT [CompanyName],[Country]
FROM [dbo].[Customers];

--Viet cau lenh SQL lay ra ten Cong ty  cua khach hang,
-- va sdt cua khach hang do
SELECT [CompanyName],[Phone]
FROM [dbo].[Suppliers];

--Viet cau lenh lay ra tat ca du lieu tu bang Product
SELECT *
FROM dbo.Products

--Viet cau lenh lay ra tat ca du lieu tu bang Du lieu khach hang
SELECt *
FROM [dbo].[Customers];

--Viet cau lenh lay ra tat ca du lieu tu bang nha cung cap - Suppliers
SELECT *
FROM dbo.Suppliers