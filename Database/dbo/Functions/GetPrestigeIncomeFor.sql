CREATE FUNCTION [dbo].[GetPrestigeIncomeFor] (@humanId int)
RETURNS INT
AS
BEGIN
    DECLARE @income INT;
    SELECT
        @income = SUM([TitleTypes].[Level])
    FROM
        [Humans]
    JOIN [Titles]
        ON [Humans].[Id] = [Titles].[RulerId]
    JOIN [TitleTypes]
        ON [TitleTypes].[Id] = [Titles].[TitleTypeId]
    WHERE 
        [Humans].[Id] = @humanId
    RETURN @income;
END
