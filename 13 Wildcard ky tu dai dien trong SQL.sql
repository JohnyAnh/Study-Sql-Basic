-- Hãy lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ ‘A’
SELECT *
FROM Customers
WHERE ContactName LIKE 'A%';

-- Hãy lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ ‘H’
-- , và có chữ thứ 2 là bất kỳ ký tự nào.
SELECT *
FROM Customers
WHERE ContactName LIKE 'H_%';

-- Hãy lọc ra tất cả các đơn hàng được gửi đến thành phố 
-- có chữ cái bắt đầu là L, chữ cái thứ hai là u hoặc o.
SELECT *
FROM Orders
WHERE ShipCity LIKE 'L[U,O]%';


-- Hãy lọc ra tất cả các đơn hàng được gửi đến thành phố 
-- có chữ cái bắt đầu là L, chữ cái thứ hai khong là u hoặc o.
SELECT ShipCity
FROM Orders
WHERE ShipCity LIKE 'L[^U,O]%';

-- Hãy lọc ra tất cả các đơn hang được gửi đến thành phố có 
-- chữ cái bắt đầu là L, chữ cái thứ hai là các ký tự từ a đến e.
SELECT ShipCity
FROM Orders
WHERE ShipCity LIKE 'L[A-E]%';



