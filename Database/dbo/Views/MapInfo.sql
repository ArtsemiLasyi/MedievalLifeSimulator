CREATE VIEW [dbo].[MapInfo]
AS
    SELECT
        [SourceSettlements].[Id] AS [SourceSettlementId],
        [SourceSettlementTypes].[Id] AS [SourceSettlementTypeId],
        [SourceSettlementTypes].[Name] AS [SourceSettlementTypeName],
        [SourceSettlements].[Name] AS [SourceSettlementName],
        [DestinationSettlements].[Id] AS [DestinationSettlementId],
        [DestinationSettlements].[Name] AS [DestinationSettlementName],
        [DestinationSettlementTypes].[Id] AS [DestinationSettlementTypeId],
        [DestinationSettlementTypes].[Name] AS [DestinationSettlementTypeName]
    FROM 
        [Settlements] AS [SourceSettlements]
    JOIN [SettlementTypes] AS [SourceSettlementTypes]
        ON [SourceSettlements].[SettlementTypeId] = [SourceSettlementTypes].[Id]
    LEFT JOIN [SettlementWays]
        ON [SourceSettlements].[Id] = [SettlementWays].[FirstSettlementId]
    JOIN [Settlements] AS [DestinationSettlements]
        ON [SettlementWays].[SecondSettlementId] = [DestinationSettlements].[Id]
    JOIN [SettlementTypes] AS [DestinationSettlementTypes]
        ON [SourceSettlements].[SettlementTypeId] = [DestinationSettlementTypes].[Id]
