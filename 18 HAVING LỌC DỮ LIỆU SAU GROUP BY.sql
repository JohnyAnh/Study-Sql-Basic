-- Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng, 
-- sắp xếp theo thứ tự tổng số đơn hàng giảm dần.
SELECT [CustomerID], COUNT(OrderID) AS "TOAL ORDERS"
FROM Orders
-- KHOG DUOC WHERE COUNT(OrderID) >20
GROUP BY [CustomerID]
HAVING  COUNT(OrderID) >20
ORDER BY COUNT(OrderID) DESC;


-- Hãy lọc ra những nhà cung cấp sản phẩm có tổng số lượng 
-- hàng trong kho (UnitsInStock) lớn hơn 30, và có trung bình 
-- đơn giá (UnitPrice) có giá trị dưới 50.
SELECT [SupplierID], SUM([UnitsInStock]) AS "TOTAL UnitsInStock", AVG ([UnitPrice]) AS "AVG UnitPrice"
FROM [dbo].[Products]
GROUP BY [SupplierID]
HAVING  SUM([UnitsInStock]) > 30 AND  AVG ([UnitPrice]) < 50;



-- Hãy cho biết tổng số tiền vận chuyển của từng tháng, 
-- trong nửa năm sau của năm 1996, sắp xếp theo tháng tăng dần.
SELECT SUM([Freight]) AS "TOTAL Freight", MONTH ([ShippedDate]) AS "MONTH" 
FROM Orders
WHERE  [ShippedDate] BETWEEN '1996-07-01' AND '1996-12-31'
GROUP BY MONTH ([ShippedDate])
-- HAVING 
ORDER BY  MONTH ([ShippedDate]) ASC;

-- Hãy cho biết tổng số tiền vận chuyển của từng tháng, 
-- trong nửa năm sau của năm 1996, sắp xếp theo tháng tăng dần.
-- Tong tien van chuyen lon hon 1000$
SELECT SUM([Freight]) AS "TOTAL [Freight]", MONTH ([ShippedDate]) AS "MONTH" 
FROM Orders
WHERE  [ShippedDate] BETWEEN '1996-07-01' AND '1996-12-31'
GROUP BY MONTH ([ShippedDate])
HAVING SUM([Freight]) > 1000
ORDER BY  MONTH ([ShippedDate]) ASC;

--Bt Lọc ra những thành phố có số lượng đặt hàng > 16 và 
-- sắp xêp theo tổng khối lượng giảm dần.
SELECT [ShipCity], COUNT(OrderID) AS "SHIP CITY"
FROM [dbo].[Orders]
-- WHERE 
GROUP BY [ShipCity]
HAVING COUNT(OrderID) > 16
ORDER BY COUNT(OrderID) DESC;

--c2
SELECT [ShipCity], COUNT([ShipCity]) AS "SHIP CITY"
FROM [dbo].[Orders]
-- WHERE 
GROUP BY [ShipCity]
HAVING COUNT([ShipCity]) > 16
ORDER BY COUNT([ShipCity]) DESC;