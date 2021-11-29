CREATE VIEW [dbo].[HumanInfo]
AS 
    SELECT
        [dbo].[Humans].[Id] AS [HumanId],
        [dbo].[Humans].[Age] AS [Age],
        [dbo].[Humans].[DynastyId] AS [DynastyId]
    FROM 
        [dbo].[Humans]
    JOIN [dbo].[HumanTraits]
        ON [dbo].[Humans].[Id] = [dbo].[HumanTraits].[HumanId]
    JOIN [dbo].[Traits]
        ON [dbo].[HumanTraits].[TraitId] = [dbo].[Traits].[Id]
    JOIN [dbo].[HumanWealths]
        ON [dbo].[Humans].[Id] = [dbo].[HumanWealths].[HumanId]
