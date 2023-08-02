-- Lấy ra tất cả các đơn hàng chưa được giao hàng.
-- (ShippedDate => NULL)
SELECT *
FROM Orders
WHERE ShippedDate IS NULL;

SELECT COUNT(*) AS "NOT SHIPER"
FROM Orders
WHERE ShippedDate IS NULL;


-- Lấy danh sách các khách hàng có khu vực (Region) không bị NULL.
SELECT *
FROM Customers
WHERE Region IS NOT NULL;

SELECT COUNT(*)
FROM Customers
WHERE Region IS NOT NULL;


-- Lấy danh sách các khách hàng không có tên công ty (CompanyName).
SELECT *
FROM Customers
WHERE CompanyName IS NULL;

--BT lAY TAT CA CAC DON HANG CHUA DUOC GIAO HANG VA CO KHU VUC GIAO HANG (ShipRegion) khoong bij NULL
SELECT *
FROM Orders 
WHERE ShippedDate IS NULL AND ShipRegion IS NOT NULL;




