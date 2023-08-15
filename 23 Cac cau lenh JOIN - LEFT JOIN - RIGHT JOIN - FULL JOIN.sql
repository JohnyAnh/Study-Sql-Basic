--Sử dụng INNER JOIN
--Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Products P INNER JOIN Categories C
ON C.CategoryID = P.CategoryID;


--Sử dụng INNER JOIN
--Từ bảng Products và Categories, hãy đưa ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Số lượng sản phẩm
SELECT C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS "TOTAL PRODUCTS"
FROM Products P INNER JOIN Categories C
ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryID, C.CategoryName;


--Sử dụng INNET JOIN, hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên công ty khách hàng
SELECT O.OrderID, C.CompanyName
FROM Orders O INNER JOIN Customers C
ON O.CustomerID = C.CustomerID;

--Sử dụng INNER JOIN, LEFT JOIN
--Từ bảng Products và Categories, hãy đưa ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Tên sản phẩm
SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Categories C  INNER JOIN Products P
ON C.CategoryID = P.CategoryID;

SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Categories C  LEFT JOIN Products P
ON C.CategoryID = P.CategoryID;

SELECT C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS "TOTAL PRODUCTS"
FROM Categories C  INNER JOIN Products P
ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryID, C.CategoryName;

SELECT C.CategoryID, C.CategoryName, COUNT(P.ProductID) AS "TOTAL PRODUCTS"
FROM Categories C  LEFT JOIN Products P
ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryID, C.CategoryName;

--Sử dụng RIGHT JOIN, hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên công ty khách hàng
SELECT O.OrderID, C.CompanyName
FROM Orders O INNER JOIN Customers C
ON O.CustomerID = C.CustomerID;

SELECT O.OrderID, C.CompanyName, COUNT(O.OrderID)
FROM Orders O INNER JOIN Customers C
ON O.CustomerID = C.CustomerID
GROUP BY O.OrderID, C.CompanyName;

SELECT O.OrderID, C.CompanyName, COUNT(O.OrderID)
FROM Orders O RIGHT JOIN Customers C
ON O.CustomerID = C.CustomerID
GROUP BY O.OrderID, C.CompanyName;

--Sử dụng FULL OUTER JOIN
--Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm

SELECT C.CategoryID, C.CategoryName, P.ProductID, P.ProductName
FROM Categories C  FULL JOIN Products P
ON C.CategoryID = P.CategoryID;

--• Câu höi 1 (INNER JOIN): Häy liêt kê tên nhân viên và tên khách hang cúa các don hang trong bang "Orders".

--• Câu hoi 2 (LEFT JOIN): Häy liêt kê tên nhà cung câp và tên sán phâm cúa các san pham trong bang "Products", bao göm cá các sán phâm không có nhà cung câp.

--• Câu hoi 3 (RIGHT JOIN): Häy liêt kê tên khách hang và tên don hang cúa các don hang trong bâng "Orders", bao göm cá các khách hang không có don hang.

--• Câu hoi 4 (FULL JOIN): Häy liêt kê tên danh muc và tên nhà cung câp cúa các san phâm trong bang "Products", bao gom cá các danh muc và nhà cung cãp không có san phâm.