-- Viết câu lệnh SQL lấy ra tên các quốc gia (Country) khác nhau
-- từ bảng khách hCheck faRooiàng - Customers
SELECT DISTINCT [Country]
FROM dbo.Customers;

-- Viết câu lệnh SQL lấy ra tên các mã số bưu điện (PostalCode) khác nhau 
-- từ bảng Nhà cung cấp - Suppliers

SELECT DISTINCT [PostalCode]
FROM dbo.Suppliers;

-- Viết câu lệnh SQL lấy ra các dữ liệu khác nhau về họ của nhân viên (LastName) 
-- và cách gọi danh hiệu lịch sự (TitleOfCourtesy) của nhân viên từ bảng Employees

SELECT DISTINCT TitleOfCourtesy, LastName
FROM Employees;

--BT ViẾT cÂu lỆNH SQL lẤY ra mÃ Đoen vỊ vẬN chuyỂn (ShipVia) khÁC nhau cỦA cÁC ĐƠn hÀNG - Order
SELECT DISTINCT ShipVia
FROM Orders;