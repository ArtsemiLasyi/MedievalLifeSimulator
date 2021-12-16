CREATE PROCEDURE [dbo].[TryToSpread]
AS
    INSERT INTO [SettlementEpidemics] ([EpidemicId], [SettlementId], [EpidemicsPower])
    SELECT
        *
    FROM
        [Settlements]
    JOIN [SettlementWays]
        ON [Settlements].[Id] = [SettlementWays].[FirstSettlementId]
    JOIN [Settlements] AS [EpidemicSource]
        ON [SettlementWays].[SecondSettlementId] = [EpidemicSource].[Id]
    JOIN [SettlementEpidemics]
        ON [EpidemicSource].[Id] = [SettlementEpidemics].[EpidemicId]
RETURN 0
