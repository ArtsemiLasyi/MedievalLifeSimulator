CREATE FUNCTION [dbo].[GetResultFromProbability] (@probabilityInPercent int)
RETURNS BIT
AS
BEGIN
    DECLARE @number INT;
    DECLARE @result BIT;
    SELECT @number = CAST(RAND(100) AS INT);
    IF (@probabilityInPercent > @number)
        SET @result = 1;
    ELSE
        SET @result = 0;
    RETURN @result;
END