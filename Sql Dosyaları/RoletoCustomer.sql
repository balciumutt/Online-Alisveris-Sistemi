CREATE TRIGGER RoletoCustomer
ON Customers
AFTER INSERT
AS
BEGIN
    DECLARE @CustomerUsername NVARCHAR(50)
    
    -- Yeni eklenen Employee'yi al
    SELECT @CustomerUsername =CustomerUsername
    FROM inserted;

    IF @CustomerUsername IS NOT NULL AND @CustomerUsername <> ''
    BEGIN
        EXEC sp_addrolemember 'Müsteri', @CustomerUsername;
    END
END;
