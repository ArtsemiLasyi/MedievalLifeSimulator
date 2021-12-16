CREATE VIEW [dbo].[TitleInfo]
AS 
    SELECT
        [Titles].[Id],
        [Titles].[DeFactoSuzerenId],
        [Titles].[DeJureSuzerenId],
        [Titles].[Name],
        [Titles].[RulerId]
    FROM 
        [Titles]
    JOIN [TitleTypes]
        ON [TitleTypes].[Id] = [Titles].[TitleTypeId]
    JOIN [TitleCultures]
        ON [TitleCultures].[TitleId] = [Titles].[Id]
    JOIN [ReligionTitleTypes]
        ON [ReligionTitleTypes].[TitleTypeId] = [TitleTypes].[Id]
    JOIN [Humans]
        ON [Titles].[RulerId] = [Humans].[Id]
