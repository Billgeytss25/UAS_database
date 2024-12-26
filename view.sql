CREATE VIEW OrderDetails AS
SELECT 
    o.OrderID,
    c.Name AS CustomerName,
    p.ProductName AS ProductName,
    o.OrderDate,
    o.Quantity,
    o.TotalPrice,
    o.OrderStatus
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN Products p ON o.ProductID = p.ProductID;
