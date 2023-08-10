--Từ bảng Products và Categories, 
-- hãy tìm các sản phẩm thuộc danh mục ‘Seafood’ 
-- (Đồ hải sản) in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Products AS P, Categories AS C
WHERE  P.CategoryID = C.CategoryID AND C.CategoryName = 'Seafood';



--Từ bảng Products và Suppliers, 
-- hãy tìm các sản phẩm thuộc được cung cấp từ nước ‘Germany’ (Đức) :
--Mã nhà cung cấp
--Quốc gia
--Mã sản phẩm
--Tên sản phẩm
SELECT SL.SupplierID, SL.Country,P.ProductID,P.ProductName
FROM Suppliers AS SL, Products AS P
WHERE SL.SupplierID = P.SupplierID AND SL.Country = 'Germany';

--Từ[dbo].[Orders] [dbo].[Shippers][dbo].[Customers]3 bảng trong hình hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên khách hàng
--Tên công ty vận chuyển
--Và chỉ in ra các đơn hàng của các khách hàng đến từ thành phố ‘London’
SELECT O.OrderID, C.CompanyName, SH.CompanyName
FROM Orders O, Customers AS C, Shippers AS SH
WHERE O.CustomerID = C.CustomerID AND O.ShipVia = SH.ShipperID AND C.City = 'London';




--Từ 3[dbo].[Orders][dbo].[Customers][dbo].[Shippers] bảng trong hình hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên khách hàng
--Tên công ty vận chuyển
--Ngày yêu cầu chuyển hàng
--Ngày giao hàng
--Và chỉ in ra các đơn hàng bị giao muộn hơn quy định.
--RequiredDate < ShippedDate

SELECT O.OrderID, C.ContactName, C.CompanyName,O.RequiredDate , O.ShippedDate
FROM Orders O, Customers C, Shippers S
WHERE O.CustomerID = C.CustomerID AND O.ShipVia = S.ShipperID AND O.RequiredDate < O.ShippedDate


--[dbo].[Orders][dbo].[Customers][dbo].[Shippers]
--Cung cấp các quốc gia vận chuyển này cho khách hàng nào 
-- Chỉ chọn quốc gia có hơn 100 quốc gia này đơn đặt hàng. không đến từ Hoa Kỳ. 
--Hiển thị ShipCountry và Số lượng đơn đặt hàng MacBook Air
--Kết quả: (122, Đức
SELECT O.ShipCountry , COUNT(O.OrderID)
FROM Orders O, Customers C, Shippers S
WHERE O.CustomerID = C.CustomerID AND O.ShipVia = S.ShipperID AND O.ShipCountry != 'USA'
GROUP BY O.ShipCountry
HAVING COUNT(O.OrderID) > 100
ORDER BY COUNT(O.OrderID) DESC;