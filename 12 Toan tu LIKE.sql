-- Hãy lọc ra tất cả các khách hàng đến từ các quốc gia (Country)
-- bắt đầu bằng chữ ‘A’
SELECT *
FROM Customers
WHERE Country LIKE 'A%';


-- Lấy danh sách các đơn đặt được gửi đến các thành phố có chứa chữ ‘a’.
SELECT *
FROM Orders
WHERE ShipCity LIKE 'a%';

-- Hãy lọc ra tất cả các đơn hàng với điều kiện:
-- ShipCountry  LIKE ‘U_’
-- ShipCountry LIKE ‘U%’
SELECT *
FROM Orders
WHERE ShipCountry  LIKE 'U_' ;

SELECT *
FROM Orders
WHERE  ShipCountry LIKE 'U%';

--BT lay tat ca cac nha cung cap co chu 'b' trong ten cua cong ty
SELECT *
FROM Suppliers
WHERE CompanyName LIKE 'b%';

--BT lay tat ca cac nha cung cap co o thanh pho co chu 'o' trong ten cua cong ty
SELECT *
FROM Suppliers
WHERE City LIKE 'o%';
