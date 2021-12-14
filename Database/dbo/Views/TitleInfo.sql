CREATE VIEW [dbo].[TitleInfo]
AS 
    SELECT
        *
    FROM 
        [Titles]
    JOIN [TitleTypes]
        ON [TitleTypes].[Id] = [Titles].[TitleTypeId]
    JOIN [TitleCultures]
        ON [TitleCultures].[TitleId] = [Titles].[Id]
    JOIN []
