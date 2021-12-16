CREATE FUNCTION [dbo].[GetRandomGender] ()
RETURNS BIT
AS
BEGIN
    DECLARE @number INT = GetRandom(1, 2);
    DECLARE @result BIT;
    IF (@number > 1)
        SET @result = 1;
    ELSE
        SET @result = 0;
    RETURN @result;
END
