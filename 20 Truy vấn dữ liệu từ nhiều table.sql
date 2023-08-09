--Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT C.CategoryID, C.CategoryName ,  P.ProductID, P.ProductName 
FROM Products AS p, Categories AS c
WHERE C.CategoryID = P.ProductID;

--Từ bảng Employees và Orders, hãy in ra các thông tin sau đây:
--Mã nhân viên
--Tên nhân viên
--Số lượng đơn hàng mà nhân viên đã bán được
SELECT O.EmployeeID, E.LastName, E.FirstName, COUNT(O.OrderID) AS "TOTAL ORDERS"
FROM Employees AS E, Orders AS O
WHERE E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID,  E.LastName, E.FirstName;

--Từ bảng Customers và Orders, hãy in ra các thông tin sau đây:
--Mã số khách hàng
--Tên công ty
--Tên liên hệ
--Số lượng đơn hàng đã mua
--Với điều kiện: quốc gia của khách hàng là UK
SELECT C.CustomerID, C.CompanyName, C.ContactName, COUNT(O.OrderID) AS "TOTAL ORDERS"
FROM Customers AS C, Orders AS O
WHERE C.CustomerID= O.CustomerID AND O.ShipCountry = 'UK'
GROUP BY C.CustomerID, C.CompanyName, C.ContactName;


--Từ bảng Orders và Shippers, hãy in ra các thông tin sau đây:
--Mã nhà vận chuyển
--Tên công ty vận chuyển
--Tổng số tiền được vận chuyển (Sum Frieght)
--Và in ra màn hình theo thứ tự sắp xếp tổng số tiền vận chuyển giảm dần.
SELECT S.ShipperID, S.CompanyName, SUM(O.Freight) AS "TOTAL FRIEGHT"
FROM Shippers AS S, Orders AS O
WHERE S.ShipperID = O.ShipVia
GROUP BY S.ShipperID, S.CompanyName 
ORDER BY SUM(O.Freight) DESC;


--Từ bảng Products và Suppliers, hãy in ra các thông tin sau đây:
--Mã nhà cung cấp
--Tên công ty
--Tổng số các sản phẩm khác nhau đã cung cấp
--Và chỉ in ra màn hình duy nhất 1 nhà cung cấp có số lượng sản phẩm khác nhau nhiều nhất.
SELECT TOP 1 S.SupplierID, S.CompanyName, COUNT(P.ProductID) AS "TOTAL PRODUCTS"
FROM  Suppliers AS S, Products AS P
WHERE S.SupplierID = P.SupplierID 
GROUP BY S.SupplierID, S.CompanyName
ORDER BY COUNT(P.ProductID) DESC;




--Từ bảng Orders và Orders Details, hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tổng số tiền sản phẩm của đơn hàng đó
SELECT O.OrderID, SUM(OD.UnitPrice*OD.Quantity) AS "TOTAL UNIT PRICE"
FROM [Order Details] AS OD, Orders AS O
WHERE OD.OrderID = O.OrderID
GROUP BY O.OrderID;


--Từ 3 bảng Employees, Orders và Orders Details hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên nhân viên
--Tổng số tiền sản phẩm của đơn hàng
SELECT O.OrderID, E.FirstName, E.LastName, SUM(OD.UnitPrice*OD.Quantity) AS "TOTAL"
FROM [Order Details] AS OD, Orders AS O, Employees AS E
WHERE OD.OrderID = O.OrderID AND O.EmployeeID = E.EmployeeID
GROUP BY O.OrderID, E.FirstName, E.LastName;


--Bài tập: Từ 3 bảng Orders, Shippers, Customers in ra thông tin
 --Mã đơn hàng
 --Tên khách hàng
 --Tên công ty vận chuyển
 --Đk in ra các đơn hàng được giao đến 'UK' trong năm 1997
 SELECT O.OrderID, C.CompanyName, S.CompanyName, O.ShipCountry
 FROM Orders AS O, Customers AS C, Shippers AS S
 WHERE O.CustomerID = C.CustomerID AND O.ShipVia = S.ShipperID AND O.ShipCountry LIKE 'UK'
 GROUP BY O.OrderID, C.CompanyName, S.CompanyName, O.ShipCountry;