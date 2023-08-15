-- Liet ke ra toan bo san pham
SELECT ProductID, ProductName, UnitPrice
FROM Products

-- Tim gia trung binh cua cac san pham
SELECT AVG(UnitPrice)
FROM Products; 


-- Loc nhung san pham co gia > gia trung binh
SELECT ProductID, ProductName, UnitPrice
FROM Products 
WHERE UnitPrice > 28.4962;

-- Sub query
SELECT ProductID, ProductName, UnitPrice
FROM Products 
WHERE UnitPrice > 
(
	SELECT AVG(UnitPrice)
	FROM Products
);

-- Loc ra nhung khach hang co so don hang > 10
SELECT C.CustomerID, C.CompanyName, COUNT(O.OrderID) AS "TOTAL ORDERS"
FROM Orders O
LEFT JOIN Customers C
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID, C.CompanyName
HAVING COUNT(O.OrderID) > 10;

-- Sub query
SELECT *
FROM Customers
WHERE CustomerID IN (
	SELECT CustomerID 
	FROM Orders
	GROUP BY CustomerID
	HAVING COUNT(CustomerID) > 10
)



-- Tinh tong tien cho tung don hang
SELECT O.OrderID, SUM(OD.Quantity*OD.UnitPrice) AS "TOTAL ORDERS"
FROM Orders O
INNER JOIN [Order Details] OD
ON O.OrderID = OD.OrderID
GROUP BY O.OrderID;

SELECT O.*, (
	SELECT SUM(OD.Quantity* OD.UnitPrice)
	FROM [Order Details] OD
	WHERE OD.OrderID = O.OrderID
)
FROM Orders O;	


-- Loc ra ten san pham va tong so don hang cua san pham
SELECT P.ProductID, P.ProductName, COUNT(OD.OrderID) "TOTAL ORDERS"
FROM Orders O
RIGHT JOIN [Order Details] OD
ON O.OrderID = OD.OrderID
RIGHT JOIN Products P
ON P.ProductID = OD.ProductID
GROUP BY P.ProductID, P.ProductName;

SELECT P.*,(
	SELECT COUNT(OD.OrderID)
	FROM [Order Details] OD
	WHERE OD.ProductID = P.ProductID
	
)
FROM Products P;

-- bt hÃY in ra mã đơn hàng và tổng gtri của đơn hàng đó

SELECT O.OrderID , (
	SELECT SUM(OD.Quantity* OD.UnitPrice)
	FROM [Order Details] OD
	WHERE OD.OrderID = O.OrderID
)
FROM Orders O;	

-- bt hÃY in ra mã đơn hàng và số lượng của đơn hàng đó
SELECT O.OrderID, (
	SELECT COUNT( OD.Quantity)
	FROM [Order Details] OD
	WHERE OD.OrderID = O.OrderID
)
FROM Orders O;	