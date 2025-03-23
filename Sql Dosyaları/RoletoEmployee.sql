CREATE TRIGGER RoleToEmploye
ON Employee
FOR INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted
    )
    BEGIN
        DECLARE @EmployeeUsername NVARCHAR(50)
    
        -- Yeni eklenen Employee'yi al
        SELECT TOP 1 @EmployeeUsername = EmployeeUsername
        FROM inserted;

        -- Yeni Employee'ye "calisan" rolünü ata
        IF @EmployeeUsername IS NOT NULL
        BEGIN
            EXEC sp_addrolemember 'Calisan', @EmployeeUsername;
        END
    END
END;
