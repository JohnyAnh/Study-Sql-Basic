-- Viết câu lệnh SQL lấy ra 05 dòng đầu tiên 
-- trong bảng Customers.
SELECT TOP 5 *
FROM Customers;

-- Viết câu lệnh SQL lấy ra 30% nhân viên 
-- của công ty hiện tại.
SELECT TOP 30  PERCENT *
FROM Employees;

--Viết câu lệnh SQL lấy ra các mã khách hàng trong bảng đơn hàng 
--với quy định là mã khách hàng không được trùng lặp, 
--chỉ lấy 5 dòng dữ liệu đầu tiên.
SELECT DISTINCT TOP 5 CustomerID
FROM Orders;

--BT Viết câu lệnh SQL lấy ra cac san pham co ma the loai khong bi trung lap
-- va chi lay ra 3 dong dau tien
SELECT DISTINCT TOP 3 [CategoryID]
FROM Products;