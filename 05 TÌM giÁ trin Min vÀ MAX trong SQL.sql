-- Viết câu lệnh SQL tìm giá thấp nhất của các sẩn phẩm trong bảng Products.
SELECT MIN(UnitPrice) AS "MIN PRICE"
FROM Products;

-- Viết câu lệnh lấy ra ngày đặt hàng gần đây nhất 
-- từ bảng Orders.
SELECT MAX(OrderDate) AS "NGAY DAT HANG GAN NHAT"
FROM Orders;


-- Viết câu lệnh SQL tìm số lượng hàng trong kho (UnitsInStock)
-- lớn nhất.
SELECT MAX(UnitsInStock)
FROM Products;

-- Viết câu lệnh SQL Tìm tuỔI ĐỜI lỚN nhẤT cÔng ty
SELECT MIN([BirthDate])
FROM Employees;
