-- Hãy cho biết mỗi khách hàng đã đặt bao nhiêu đơn hàng?
SELECT CustomerID, COUNT(OrderID) AS "TotalOrders"
FROM Orders
GROUP BY CustomerID;

-- Hãy tính giá trị đơn giá trung bình theo mỗi nhà cung cấp sản phẩm.
SELECT SupplierID, AVG (UnitPrice ) 
FROM Products
GROUP BY SupplierID;

-- Hãy cho biết mỗi thể loại có tổng số bao nhiêu sản phẩm trong kho (UnitsOnStock)?
SELECT CategoryID, SUM(UnitsInStock ) 
FROM Products
GROUP BY CategoryID;

-- Hãy cho biết giá vận chuyển thấp nhất và lớn nhất 
-- của các đơn hàng theo từng thành phố và quốc gia khác nhau.
SELECT [ShipCountry],[ShipCity] , 
MIN([Freight]), 
MAX ([Freight])
FROM [dbo].[Orders]
GROUP BY [ShipCountry], [ShipCity]
ORDER BY [ShipCountry];




