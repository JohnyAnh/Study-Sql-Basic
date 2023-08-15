-- Bài tập 1 (INNER JOIN): Liệt kê tên sản phẩm và tên nhà cung cấp
-- của các sản phẩm đã được đặt hàng trong bảng "Order Details". 
-- Sử dụng INNER JOIN để kết hợp bảng "Order Details" với các bảng 
-- liên quan để lấy thông tin sản phẩm và nhà cung cấp.
SELECT DISTINCT OD.ProductID, P.ProductName, S.CompanyName
FROM [Order Details] OD
INNER JOIN Products P
ON OD.ProductID =P.ProductID
INNER JOIN Suppliers S
ON S.SupplierID =P.SupplierID;

-- Bài tập 2 (LEFT JOIN): Liệt kê tên khách hàng và tên 
-- nhân viên phụ trách của các đơn hàng trong bảng "Orders". 
-- Bao gồm cả các đơn hàng không có nhân viên phụ trách.
-- Sử dụng LEFT JOIN để kết hợp bảng "Orders" với bảng "Employees" 
-- để lấy thông tin về khách hàng và nhân viên phụ trách.
SELECT O.OrderID, E.LastName, E.FirstName, C.CompanyName
FROM Orders O
LEFT JOIN 
Employees E
ON E.EmployeeID = O.EmployeeID
LEFT JOIN 
Customers C
ON C.CustomerID = O.CustomerID;

-- Bài tập 3 (RIGHT JOIN):
SELECT O.OrderID, E.LastName, E.FirstName, C.CompanyName
FROM Orders O
RIGHT JOIN 
Employees E
ON E.EmployeeID = O.EmployeeID
RIGHT JOIN 
Customers C
ON C.CustomerID = O.CustomerID;

-- Bai tap 4:
-- Bài tập 4 (FULL JOIN): Liệt kê tên danh mục và tên 
-- nhà cung cấp của các sản phẩm trong bảng "Products". 
-- Bao gồm cả các danh mục và nhà cung cấp không có sản phẩm. 
-- Sử dụng FULL JOIN hoặc kết hợp LEFT JOIN và RIGHT JOIN để lấy  
-- thông tin về danh mục và nhà cung cấp.
SELECT P.ProductID, P.ProductName, S.CompanyName, C.CategoryName
FROM Products P
FULL JOIN Suppliers S
ON S.SupplierID = P.SupplierID
FULL JOIN Categories C
ON C.CategoryID = P.CategoryID;

-- BT 5 (INNER JOIN): Liệt kê tên khách hàng và tên sản phẩm đã được 
-- đặt hàng trong bảng"Order" và "Order Details" để lấy thông tin khách 
-- hàng và sản phẩm đã được đặt hàng
SELECT DISTINCT C.CustomerID, C.ContactName, P.ProductName
FROM Customers C
INNER JOIN Orders O
ON O.CustomerID = C.CustomerID
INNER JOIN [Order Details] OD
ON OD.OrderID = O.OrderID
INNER JOIN Products P
ON P.ProductID = OD.ProductID


--BT 6 (FULL JOIN) liệt kê tên nhân viên và ten khách hàng của các đơn 
--hàng trong bảng "Orders". Bao gồm cả các đơn hằng không có nhân viên hoặc
--khách hàng tương ứng. Sử dụng FULL JOIN hoặc kết hợp LEFT JOIN  và RIGHT JOIN
--kết hợp bảng "Orders" với bảng "Employees" và "Customers" để lấy thông tin về 
--nhân viên và khách hàng.
SELECT DISTINCT E.EmployeeID, E.LastName, E.FirstName, O.OrderID, C.CompanyName
FROM Employees E
FULL JOIN Orders O
ON E.EmployeeID = O.EmployeeID
FULL JOIN Customers C
ON C.CustomerID = O.CustomerID;