CREATE PROCEDURE [dbo].[GenerateWorld]
AS
    DECLARE @numberOfHumans INT = 1000;
    DECLARE @numberOfDynasties INT = 100;
    DECLARE @counter INT = 0;
    
    WHILE @counter < @numberOfDynasties
    BEGIN
        INSERT INTO [Dynasties] ([Name], [CultureId])
        VALUES
        (
            's',
            1
        )
    END;
        
RETURN 0