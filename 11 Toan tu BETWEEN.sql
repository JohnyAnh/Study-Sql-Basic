-- Lấy danh sách các sản phẩm có giá bán trong khoảng từ 10 đến 20 đô la.
SELECT *
FROM Products
WHERE UnitPrice BETWEEN 10 AND 20; 

SELECT *
FROM Products
WHERE UnitPrice >= 10 AND UnitPrice <= 20;



-- Lấy danh sách các đơn đặt hàng được đặt trong khoảng thời gian 
-- từ ngày 1996-07-01 đến ngày 1996-07-31:
SELECT *
FROM Orders
WHERE OrderDate BETWEEN  '1996-07-01' AND '1996-07-31';

-- Tính tổng số tiền vận chuyển (Freight) của các
-- đơn đặt hàng được đặt trong khoảng thời gian từ ngày 1996-07-01 
-- đến ngày 1996-07-31:
SELECT SUM(Freight) AS "TotalJulyFreight"
FROM Orders
WHERE OrderDate BETWEEN  '1996-07-01' AND '1996-07-31';

--Bt Lay danh sach don hang  co ngay dat trong khoang tu 1997-1-1 to 1997-12-31 
--va duoc van chuyen bang tau thuy(ShipVia =3)
SELECT *
FROM Orders
WHERE ShipVia = 3 AND OrderDate BETWEEN '1997-1-1' AND '1997-12-31' ;