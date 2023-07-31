-- Bạn hãy liệt kê tất cả các nhân viên đến từ thành phố London.
SELECT *
FROM Employees
WHERE [City] = 'London';


-- Bạn hãy liệt kê tất cả các nhân viên đến từ thành phố London.
-- Sap xep ket qua theo LastName A->Z
SELECT *
FROM Employees
WHERE [City] = 'London'
ORDER BY LastName ASC;

-- Bạn hãy liệt kê tất các đơn hàng bị giao muộn, 
-- biết rằng ngày cần phải giao hàng là RequiredDate, ngày giao hàng thực tế là ShippedDate.
SELECT COUNT(*) AS "SO DON HANG GIAO MUON"
FROM Orders
WHERE ShippedDate > RequiredDate;


-- Lấy ra tất cả các đơn hàng chi tiết được giảm giá nhiều hơn 10%.
-- (Discount > 0.1)
SELECT *
FROM [Order Details]
WHERE Discount > 0.1;

SELECT COUNT(*)
FROM [Order Details]
WHERE Discount > 0.1;

--BT Liet ke tat ca don hang gui tu France 
SELECT *
FROM Orders
WHERE[ShipCountry] = 'France'
ORDER BY OrderID;

-- BT liet ke  cac san pham co so luong hang trong kho (UnitslnStock) lon hon 20
SELECT ProductID, ProductName, UnitsInStock
FROM Products
WHERE UnitsInStock > 20;












