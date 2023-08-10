-- Từ bảng Order Details hãy liệt kê 
-- các đơn đặt hàng có Unit Price 
-- nằm trong phạm vi từ 100 đến 200.
-- I - 22
SELECT OrderID
FROM [Order Details]
WHERE UnitPrice BETWEEN 100 AND 200;


-- Đưa ra các đơn đặt hàng có 
-- Quantity bằng 10 hoặc 20
-- II - 433
SELECT OrderID
FROM [Order Details]
WHERE Quantity = 10 OR Quantity = 20; -- Quantity IN (10,20);


-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 VÀ đơn hàng phải có Quantity 
-- bằng 10 hoặc 20
--- III = I AND II = 7 rows
SELECT OrderID
FROM [Order Details]
WHERE (UnitPrice BETWEEN 100 AND 200) AND Quantity IN (10,20);



-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 HOAC đơn hàng phải có Quantity 
-- bằng 10 hoặc 20
--- IV = I OR II = 448 rows
SELECT OrderID
FROM [Order Details]
WHERE (UnitPrice BETWEEN 100 AND 200) OR Quantity IN (10,20);

-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 HOAC đơn hàng phải có Quantity 
-- bằng 10 hoặc 20, DISTINCT
--- V = IV + DISTINCT = 360
SELECT DISTINCT OrderID
FROM [Order Details]
WHERE (UnitPrice BETWEEN 100 AND 200) OR Quantity IN (10,20);

-- UNION
-- V = I OR II = 360 rows
SELECT OrderID
FROM [Order Details]
WHERE UnitPrice BETWEEN 100 AND 200
UNION
SELECT OrderID
FROM [Order Details]
WHERE  Quantity IN (10,20);

-- IV (ko co distinct) = I OR II = 455 rows = 448 + 7 = 455 rows
SELECT OrderID
FROM [Order Details]
WHERE UnitPrice BETWEEN 100 AND 200
UNION ALL
SELECT OrderID
FROM [Order Details]
WHERE  Quantity IN (10,20);

-- Lay tat ca quoc gia tu 2 table Suppliers va Customers
SELECT DISTINCT country
FROM Suppliers;

SELECT DISTINCT country
FROM Customers;

SELECT DISTINCT country
FROM Suppliers
UNION
SELECT DISTINCT country
FROM Customers;

SELECT DISTINCT country
FROM Suppliers
UNION ALL
SELECT DISTINCT country
FROM Customers;
--Viết và thực thi câu lệnh truy vấn bến dưới sau có comment giải thích ý nghĩa câu lệnh

SELECT city, country
FROM Customers
WHERE country LIKE 'U%'
UNION
SELECT city, country
FROM Suppliers
WHERE city = 'London'
UNION
SELECT ShipCity, ShipCountry
FROM Orders
WHERE ShipCountry = 'USA';
-- Lập danh sách in ra tất cả tên thành phố, quốc gia bắt đầu bằng chữ U. UNION nên không 
--có trùng lặp còn lại USA và UK thỏa mãn=> in ra danh sách các thành phố của USA -UK từ 
--3 bảng Custumers, Supplies, Orders