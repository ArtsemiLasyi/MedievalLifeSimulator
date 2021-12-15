CREATE FUNCTION [dbo].[GetPrestige] (@dynastyId int)
RETURNS BIT
AS
BEGIN
    DECLARE @sum INT;
    SELECT
        @sum = SUM([HumanWealths].[PrestigeNumber])
    FROM
        [Dynasties]
    JOIN [Humans]
        ON [Humans].[DynastyId] = [Dynasties].[Id]
    JOIN [HumanWealths]
        ON [Humans].[Id] = [HumanWealths].[HumanId]
    RETURN @sum;
END
