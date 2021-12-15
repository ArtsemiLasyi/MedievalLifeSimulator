CREATE VIEW [dbo].[MapInfo]
AS
    SELECT 
        * 
    FROM 
        [Settlements]
    JOIN [SettlementWays]
        ON [SeattlementTypeId]
