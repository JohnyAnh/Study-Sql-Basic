-- Tính số lượng đơn đặt hàng trong năm 1997 của từng khách hàng?
SELECT CustomerID, 
	COUNT([OrderID]) AS "TotalOrder",
	YEAR ([OrderDate]) AS "Year"
FROM Orders
WHERE YEAR (OrderDate) = 1997
GROUP BY CustomerID, YEAR (OrderDate);
-- Hãy lọc ra các đơn hang được đặt hàng vào tháng 5 năm 1997.
SELECT *,
	MONTH (OrderDate) AS "MONTH",
	YEAR (OrderDate) AS "YEAR"
FROM Orders
WHERE 
	MONTH (OrderDate) = 5 AND
	YEAR (OrderDate) = 1997;


-- Lấy danh sách các đơn hàng được đặt vào ngày 4 tháng 9 năm 1996.
--C1
SELECT *
FROM Orders
WHERE 
	MONTH (OrderDate) = 9 AND
	YEAR (OrderDate) = 1996 AND
	DAY (OrderDate) = 04;

	-- c2
SELECT *
FROM Orders
WHERE OrderDate = '1996-09-04';

-- Lấy danh sách khách hàng đặt hàng trong năm 1998 
-- và số đơn hàng mỗi tháng, sắp xếp tháng tăng dần.
SELECT CustomerID, MONTH (OrderDate) AS "MONTH", COUNT(*) AS "TOTALORDERS"
FROM Orders
WHERE YEAR(OrderDate) = 1998 
GROUP BY CustomerID, MONTH (OrderDate)
ORDER BY MONTH (OrderDate) ASC;

-- BT Hãy lọc các đơn hàng đã được giao vào tháng 5, và sắp xếp tăng dần theo năm

SELECT  CustomerID, YEAR (ShippedDate) AS "YEAR", COUNT (*) AS "TOTALORDERS" 
FROM Orders
WHERE MONTH (ShippedDate) = 5
GROUP BY CustomerID, YEAR(ShippedDate)
ORDER BY  YEAR (ShippedDate) ASC;
