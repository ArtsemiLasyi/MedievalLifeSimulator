CREATE FUNCTION [dbo].[GetRandomName] (@cultureId int)
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @name NVARCHAR(50);
    SELECT
        @name = [Name]
    FROM
        [HumanNames]
    WHERE
        [CultureId] = @cultureId
    ORDER BY 
        RAND()
    RETURN @name;
END
