-- Tính số lượng sản phẩm còn lại trong kho (UnitsInStock) 
-- sau khi bán hết các sản phẩm đã được đặt hàng (UnitsOnOrder) .
-- StockRemaining = UnitsInStock - UnitsOnOrder
SELECT [ProductName],[UnitsInStock] ,[UnitsOnOrder], ([UnitsInStock] - [UnitsOnOrder]) AS "StockRemaining"
FROM [dbo].[Products];


-- Tính giá trị đơn hàng chi tiết cho tất cả các sản phẩm trong bảng OrderDetails
-- OrderDetailValue = UnitPrice x Quantity
SELECT [OrderID],[UnitPrice],[Quantity],([UnitPrice]*[Quantity]) AS "OrderDetailValue"
FROM [Order Details];



-- Tính tỷ lệ giá vận chuyển đơn đặt hàng (Freight) trung bình
-- của các đơn hàng trong bảng Orders so với giá trị vận chuyển của đơn hàng lớn nhất (MaxFreight)
-- FreightRatio = AVG(Freight)/ MAX(Freight) 
SELECT (AVG(Freight)/ MAX(Freight)) AS "OrderDetailValue"
FROM Orders;

-- BT Hay liet ke danh ssach  cac san pham va gia (UnitPrice) cua tung san pham se duoc hiam gia 10%
--c1 Dung phep nhan + phep chia
--c2 chi duoc dung phep nhan
SELECT *, (UnitPrice * 90 / 100) AS "Product price after discount"
FROM [dbo].[Products];

SELECT *, (UnitPrice * 0.9) AS "Product price after discount"
FROM [dbo].[Products];