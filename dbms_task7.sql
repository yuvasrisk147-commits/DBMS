CREATE DATABASE EcommerceDB;
USE EcommerceDB;
CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(50)
);
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Availability VARCHAR(20)
);
INSERT INTO Customers VALUES
(1, 'Yuvasri', 'yuvasri@gmail.com', 'Tindivanam'),
(2, 'Diyvapriya', 'diyva@gmail.com', 'Chennai'),
(3, 'Nandhini', 'nandhini@gmail.com', 'Pondicherry'),
(4, 'Prethiksha', 'prethi@gmail.com', 'Villupuram');
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 55000, 'Available'),
(102, 'Smartphone', 'Electronics', 25000, 'Available'),
(103, 'Headphones', 'Accessories', 1500, 'Available'),
(104, 'Keyboard', 'Accessories', 1200, 'Unavailable'),
(105, 'Smart Watch', 'Wearables', 3500, 'Available');
SELECT * FROM Products;
SELECT ProductName, Price FROM Products;
SELECT * FROM Products WHERE Price < 5000;
SELECT * FROM Products WHERE Category = 'Electronics';
SELECT * FROM Products ORDER BY Price ASC;
SELECT * FROM Products ORDER BY Price DESC;
SELECT DISTINCT Category FROM Products;
SELECT * FROM Products WHERE Price BETWEEN 1000 AND 10000;
SELECT * FROM Products WHERE Category = 'Accessories';
SELECT * FROM Products WHERE Availability = 'Available';
SELECT * FROM Products WHERE Category = 'Electronics' AND Availability = 'Available';
SELECT * FROM Products WHERE Price < 5000 OR Availability = 'Unavailable';
SELECT * FROM Customers;
SELECT * FROM Customers WHERE City = 'Chennai';
SELECT AVG(Price) AS AveragePrice FROM Products;
SELECT MAX(Price) AS HighestPrice FROM Products;
SELECT MIN(Price) AS LowestPrice FROM Products;
SELECT COUNT(*) AS TotalProducts FROM Products;
SELECT Category, COUNT(*) AS TotalProducts FROM Products GROUP BY Category;
SELECT Category, COUNT(*) AS AvailableProducts FROM Products WHERE Availability = 'Available' GROUP BY Category;
