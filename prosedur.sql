CREATE PROCEDURE UpdateOrderStatus(IN orderID INT, IN newStatus ENUM('Pending', 'Shipped', 
'Completed', 'Cancelled'))
BEGIN
    UPDATE Orders
    SET OrderStatus = newStatus
    WHERE OrderID = orderID;
END);
