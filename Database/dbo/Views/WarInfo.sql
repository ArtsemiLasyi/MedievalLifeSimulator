CREATE VIEW [dbo].[WarInfo]
AS 
    SELECT
        [Wars].[Id] AS [WarId],
        [Wars].[Rate] AS [WarRate],
        [AttackersInfo].[Id] AS [AttackerId],
        [AttackersInfo].[Name] AS [AttackerName],
        [DefendersInfo].[Id] AS [DefenderId],
        [DefendersInfo].[Name] AS [DefenderName]
    FROM 
        [Wars]
    JOIN [Unions] AS [Attackers]
        ON [Attackers].[Id] = [Wars].[AttackersId]
    JOIN [TitleUnions] AS [AttackerTitles]
        ON [AttackerTitles].[UnionId] = [Attackers].[Id]
    JOIN [Titles] As [AttackersInfo]
        ON [AttackersInfo].[Id] = [AttackerTitles].[TitleId]
    JOIN [Unions] AS [Defenders]
        ON [Defenders].[Id] = [Wars].[DefendesrId]
    JOIN [TitleUnions] AS [DefenderTitles]
        ON [DefenderTitles].[UnionId] = [Defenders].[Id]
    JOIN [Titles] As [DefendersInfo]
        ON [AttackersInfo].[Id] = [AttackerTitles].[TitleId]