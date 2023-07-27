-- Viết câu lệnh SQL lấy “CompanyName” và đặt tên thay thế là “Công ty”; 
-- “PostalCode” và đặt tên thay thế là “Mã bưu điện”
SELECT [CompanyName] AS  [Công ty], [PostalCode] AS [Mã bưu điện]
FROM Customers;
-- Cach viet khac
SELECT CompanyName AS  "Công ty", CompanyName AS "Mã bưu điện"
FROM Customers;

-- Viết câu lệnh ra “LastName” và đặt tên thay thế là “Họ”; 
-- “FirstName” và đặt tên thay thế là “Tên”.
SELECT LastName AS [Họ], FirstName AS "Tên"
FROM Employees;

-- Viết câu lệnh SQL lấy ra 15 dòng đầu tiên tất 
-- cả các cột trong bảng Orders, đặt tên thay thế 
-- cho bảng Orders là “o”.
SELECT TOP 15 *
FROM Orders AS "o";
--Cách viết khác
SELECT TOP 15 [o].*
FROM Orders AS "o";

-- BT Viết câu lệnh SQL lấy ra các cột và đặt tên
-- thay thế như sau:
-- ProductName => Tên sản phẩm
-- SupplierID => Mã nhà cung cấp
-- CategoryID => Mã thể loại
-- Và đặt tên thay thế cho bảng Product là "p"
-- sử dụng tên thay thế khi truy vấn các cột bên trên
--Và chỉ lấy ra 5 sản phẩm đầu tiên trong bảng

SELECT TOP 5 [p]. ProductName AS "Tên sản phẩm", SupplierID AS "Mã nhà cung cấp", CategoryID AS "Mã thể loại" 
FROM Products AS "p";