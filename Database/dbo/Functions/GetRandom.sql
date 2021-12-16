CREATE FUNCTION [dbo].[GetRandom] (@min int, @max int)
RETURNS INT
AS
BEGIN
    RETURN (SELECT FLOOR(@max*V + @min) FROM [dbo].[RandWrapper])
END