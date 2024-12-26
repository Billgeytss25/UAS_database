CREATE TRIGGER UpdateTotalPrice
BEFORE INSERT ON Orders
FOR EACH ROW
BEGIN
    DECLARE productPrice DECIMAL(10, 2);
    SELECT Price INTO productPrice
    FROM Products
    WHERE ProductID = NEW.ProductID;
    
    SET NEW.TotalPrice = productPrice * NEW.Quantity;
END;
