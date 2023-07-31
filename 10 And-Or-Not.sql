-- Bạn hãy liệt kê tất cả các sản phẩm có số lượng trong kho (UnitsInStock)
-- nhỏ hơn 50 hoặc lớn hơn 100.
SELECT *
FROM Products
WHERE UnitsInStock < 50 OR UnitsInStock > 100;


-- Bạn hãy liệt kê tất các đơn hàng được giao đến Brazil, đã bị giao muộn, 
-- biết rằng ngày cần phải giao hàng là RequiredDate, ngày giao hàng thực tế là ShippedDate.
SELECT *
FROM Orders
WHERE ShipCountry = 'Brazil' AND(RequiredDate < ShippedDate);

-- Lấy ra tất cả các sản phẩm có giá dưới 100$ và mã thể loại khác 1.
-- Lưu ý: dùng NOT
SELECT *
FROM Products
WHERE UnitPrice >= 100 AND CategoryID= 1;

SELECT *
FROM Products
WHERE NOT UnitPrice >= 100 AND CategoryID= 1;

--Bt Liet ke tat ca don hang co gia van chuyen (Freight) trong khoang [50,100] do la
SELECT *
FROM Orders
WHERE Freight >= 50 AND Freight <= 100;

--Bt Hay liet cac san pham co so hang trong kho (UnitslnStock) lon hon 20 va so
-- luong hang trong don hang (UnitsOrder) nho hon 20
SELECT *
FROM Products
WHERE UnitsInStock > 20 AND UnitsOnOrder < 20;
