-- Hãy đếm số lượng khách hàng có trong bảng  (Customers).
SELECT COUNT(*) AS "NumberOfCustomers"
FROM Customers;

SELECT COUNT(CustomerID) AS "NumberOfCustomers"
FROM Customers;

-- Tính tổng số tiền vận chuyển (Freight) 
-- của tất cả các đơn đặt hàng.
SELECT SUM(Freight) AS "SumFreight"
FROM Orders

-- Tính trung bình số lượng đặt hàng (Quantity) 
-- của tất cả các sản phẩm trong bảng [Order Details]
SELECT AVG(Quantity) AS "AVG Quantity"
FROM [Order Details];

-- Đếm số lượng, tính tổng số lượng hàng trong kho 
-- và trung bình giá của các sản phẩm có trong bảng Product.
SELECT COUNT(*) AS "NumberOfProduct", SUM([UnitsInStock]) AS "TatolUnitsInStock",AVG ([UnitPrice]) AS "AVGUnitPrice"
FROM Products;

-- BT Hãy đếm số lượng đơn hàng từ bảng (Orders) với 2 cách
-- C1: Dùng dấu *
-- Cách 2: Dung max đơn hàng
SELECT COUNT(*)
FROM Orders;

SELECT COUNT([OrderID])
FROM Orders;

--BT Từ bảng [Order Details] hãy tính trung bình
--cho cột UnitPrice, và tính tổng cho cột Quantity
SELECT AVG(UnitPrice), SUM(Quantity)
FROM [Order Details];

