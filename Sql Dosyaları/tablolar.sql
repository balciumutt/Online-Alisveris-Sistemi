CREATE TABLE Admin (
    AdminUserName NVARCHAR(50) PRIMARY KEY,
	AdminPassword NVARCHAR(50),
);
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(255)
);
CREATE TABLE Customers (
    CustomerUsername NVARCHAR(50) PRIMARY KEY,
	CustomerPassword NVARCHAR(50),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    Phone NVARCHAR(15)
);
CREATE TABLE Employee (
    EmployeeUsername NVARCHAR(50) PRIMARY KEY,
	EmployeePassword NVARCHAR(50),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    Phone NVARCHAR(15),
	Salary INT
);	
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(255),
    CategoryID INT,
    Price DECIMAL(10, 2),
    StockQuantity INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
	OrderDate DATETIME,
    CustomerUsername NVARCHAR(50),
	ProductID INT,
	Quantity INT,
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerUsername) REFERENCES Customers(CustomerUsername)
);
CREATE TABLE OrderHistory (
    OrderHistoryID INT PRIMARY KEY IDENTITY(1,1),
	OrderDate DATETIME,
	CustomerUsername NVARCHAR(50),
    ProductID INT,
    Quantity INT,
	TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
	FOREIGN KEY (CustomerUsername) REFERENCES Customers(CustomerUsername),
);
CREATE TABLE DeletedRecords (
    Table_Name NVARCHAR(255),
    Record_ID INT,
    DeletedAt DATETIME
);
-- Orders tablosunu güncelleyerek OrderStatus sütununu ekle
ALTER TABLE Orders
ADD OrderStatus NVARCHAR(1);
-- Orders tablosuna "OrderStatus" sütunu için sýnýrlama ekle
ALTER TABLE Orders
ADD CONSTRAINT CHK_OrderStatus CHECK (OrderStatus IN ('A','G'));
-- DeletedRecords tablosundaki Record_ID sütununun veri tibini deiþtir
ALTER TABLE DeletedRecords
ALTER COLUMN Record_ID NVARCHAR(55);
--orders tablosuna TotalPrice ekle
ALTER TABLE Orders
ADD TotalPrice DECIMAL(10, 2);
UPDATE Orders
SET TotalPrice = Quantity * (SELECT Price FROM Products WHERE ProductID = Orders.ProductID);
UPDATE Orders
SET OrderDate = GETDATE();
ALTER TABLE OrderHistory
ADD OrderHistoryDate DATETIME DEFAULT GETDATE()



