-- Categories tablosu için örnek veriler
INSERT INTO Categories (CategoryName)
VALUES ('Elektronik'),
       ('Giyim'),
       ('Aksesuar');

-- Customers tablosu için örnek veriler
INSERT INTO Customers (CustomerUsername, CustomerPassword, FirstName, LastName, Email, Phone)
VALUES ('johndoe', 'password123', 'John', 'Doe', 'johndoe@email.com', '555-123-4567'),
       ('janedoe', 'securepass', 'Jane', 'Doe', 'janedoe@email.com', '555-987-6543'),
       ('user3', 'userpass', 'User', 'Three', 'user3@email.com', '555-555-5555');

-- Userinfo tablosu için örnek veriler
INSERT INTO Userinfo (CustomerUsername, FirstName, LastName, Email, Phone)
SELECT CustomerUsername, FirstName, LastName, Email, Phone
FROM Customers;

-- Products tablosu için örnek veriler
INSERT INTO Products (ProductName, CategoryID, Price, StockQuantity)
VALUES ('Akýllý Telefon', 1, 599.99, 100),
       ('Klavye', 1, 49.99, 50),
       ('Tiþört', 2, 19.99, 200),
       ('Çanta', 3, 39.99, 150);

-- Orders tablosu için örnek veriler
INSERT INTO Orders (OrderDate, CustomerUsername, ProductID, Quantity, OrderStatus)
VALUES ('2023-10-27 10:00:00', 'johndoe', 1, 2, 'A'),
       ('2023-10-27 11:30:00', 'janedoe', 3, 4, 'A'),
       ('2023-10-27 12:45:00', 'user3', 2, 1, 'A');

INSERT INTO Employee (EmployeeUsername, EmployeePassword, FirstName, LastName, Email, Phone, Salary)
VALUES
    ('ali123', 'sifre123', 'Ali', 'Yýlmaz', 'ali.yilmaz@example.com', '555-1234', 6000),
    ('mehmet456', 'sifre456', 'Mehmet', 'Demir', 'mehmet.demir@example.com', '555-5678', 7500),
    ('ayse789', 'sifre789', 'Ayþe', 'Kaya', 'ayse.kaya@example.com', '555-9876', 6800);





