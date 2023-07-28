-- Bạn hãy liệt kê tất cả các nhà cung cấp theo thứ tự tên đơn vị CompanyName
-- Từ A-Zm
 -- ascending
SELECT *
FROM [dbo].[Suppliers]
ORDER BY CompanyName ASC;
--The same
SELECT *
FROM [dbo].[Suppliers]
ORDER BY CompanyName;


-- Bạn hãy liệt kê tất cả các sản phẩm theo thứ tự giá giảm dần.
-- descending
SELECT *
FROM Products
ORDER BY UnitPrice DESC;


-- Bạn hãy liệt kê tất cả các nhân viên theo thứ tự họ và tên đệm A-Z.
-- Không dùng ASC | DESC
SELECT *
FROM Employees
ORDER BY LastName, FirstName;


-- Hãy lấy ra một sản phẩm có số lượng bán cao nhất từ bảng [Order Details].
-- Không được dùng MAX.
SELECT TOP 1 *
FROM [dbo].[Order Details]
ORDER BY Quantity DESC;

--bt lIệt Kê DANH Sách Các đơN đặt Hàng (OrderID) trong bẢNG orders theo thỨ 
--tỰ giẢm dẦN cỦA ngÀY ĐẶT hÀNG (OrderDate) 

SELECT OrderID
FROM Orders
ORDER BY OrderDate DESC;

--BT2: Liệt kê tên, đơn giá, số lượng trong kho (UnitsInStock) của tất cả các sản
--phẩm trong bảng Products, theo thứ tự giảm dần UnitsInStock
SELECT [ProductName], [UnitPrice], [UnitsInStock]
FROM Products
ORDER BY UnitsInStock DESC;