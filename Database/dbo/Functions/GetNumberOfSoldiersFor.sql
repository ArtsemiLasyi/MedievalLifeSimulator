CREATE FUNCTION [dbo].[GetNumberOfSoldiersFor] (@humanId int)
RETURNS INT
AS
BEGIN
    DECLARE @numberOfSoldiers INT;

    SELECT
        @numberOfSoldiers = SUM([BuildingTypes].[BaseSoldiers] * [Buildings].[Level])
    FROM
        [Humans]
    JOIN [Titles]
        ON [Humans].[Id] = [Titles].[RulerId]
    JOIN [Settlements]
        ON [Settlements].[TitleId] = [Titles].[Id]
    JOIN [Buildings]
        ON [Buildings].[SettlementId] = [Settlements].[Id]
    JOIN [BuildingTypes]
        ON [BuildingTypes].[Id] = [Buildings].[BuildingTypeId]
    WHERE 
        [Humans].[Id] = @humanId

    RETURN @numberOfSoldiers;
END