-- Liet ke cac don hang co 
-- ngay dat hang gan nhat
SELECT *
FROM Orders  O
WHERE O.OrderDate = (
	SELECT MAX(O.OrderDate) 
	FROM Orders O
);


-- Liệt kê tất cả các sản phẩm (ProductName)
-- mà không có đơn đặt hàng nào đặt mua chúng.
SELECT *
FROM Products P
WHERE P.ProductID NOT IN (
	SELECT DISTINCT OD.ProductID
	FROM [Order Details] OD							
);


-- Lấy thông tin về các đơn hàng, và tên các sản phẩm 
-- thuộc các đơn hàng chưa được giao cho khách.
SELECT O.OrderID, P.ProductName
FROM Orders O
INNER JOIN [Order Details] OD
ON OD.OrderID = O.OrderID
INNER JOIN Products P
ON OD.ProductID = P.ProductID
WHERE O.OrderID IN (
			SELECT OrderID
			FROM Orders
			WHERE ShippedDate IS NULL);

-- Lấy thông tin về các sản phẩm có số lượng tồn kho 
--- ít hơn số lượng tồn kho trung bình của tất cả các sản phẩm
SELECT *
FROM Products
WHERE UnitsInStock < (
		SELECT AVG(UnitsInStock)
		FROM Products);

-- Lấy thông tin về các khách hàng có tổng giá trị đơn hàng lớn nhất
SELECT *
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID
INNER JOIN [Order Details] OD
ON OD.OrderID = O.OrderID
WHERE (Quantity*UnitPrice) IN (
	SELECT MAX(Quantity*UnitPrice)
	FROM [Order Details]
)


