insert into Products(ProductName, CategoryID, Price, StockQuantity)
Values
('Kitap 3', 3, 30, 250);
select * from Products
DELETE from Products where ProductID=8
select* from DeletedRecords

INSERT INTO Customers (CustomerUsername,CustomerPassword, FirstName, LastName, Email, Phone)
VALUES
    ('Emre_Kaan1','emre123', 'Emre', 'Kaan', 'Emre.Kaan@email.com', '05316111881');

select * from Customers
select*from Userinfo
-- Müþteriyi silmek için saklý yordamý çaðýr
EXEC DeleteCustomerAndUserInfo @CustomerUsername = 'Emre_Kaan'; --Delete from Customers where CustomerUsername='Emre_Kaan'
select* from DeletedRecords
select*from Orders

update Orders 
SET OrderStatus = 'G'
WHERE OrderID = 3;
select * from OrderHistory
INSERT INTO Orders (CustomerUsername, OrderDate,ProductID,Quantity, OrderStatus)
VALUES
	('ahmet_yilmaz','2023-10-26 14:30:00',2,2,'A')
select* from Orders

INSERT INTO Employee (EmployeeUsername, EmployeePassword, FirstName, LastName, Email, Phone, Salary)
VALUES
    ('aali123', 'sifre123', 'Ali', 'Yýlmaz', 'ali.yilmaz@example.com', '555-1234', 6000);