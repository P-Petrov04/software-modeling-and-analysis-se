CREATE PROCEDURE ApplyToJob
    @UserID INT,
    @JobID INT
AS
BEGIN
    INSERT INTO Application(user_id, job_id, status)
    VALUES (@UserID, @JobID, 'Submitted');
END;
GO

CREATE FUNCTION CountApplications (@JobID INT)
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;

    SELECT @Count = COUNT(*) 
    FROM Application
    WHERE job_id = @JobID;

    RETURN @Count;
END;
GO

CREATE TRIGGER trg_UpdateLastLogin
ON Users
AFTER UPDATE
AS
BEGIN
    IF UPDATE(last_login)
        PRINT 'User logged in.';
END;
GO
