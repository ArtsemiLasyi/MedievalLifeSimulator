CREATE TABLE [dbo].[TitleCultures] (
    [TitleId]   INT NOT NULL,
    [CultureId] INT NOT NULL,
    CONSTRAINT [PK_TitleCultures] PRIMARY KEY CLUSTERED ([TitleId] ASC, [CultureId] ASC),
    CONSTRAINT [FK_TitleCultures_Cultures] FOREIGN KEY ([CultureId]) REFERENCES [dbo].[Cultures] ([Id]),
    CONSTRAINT [FK_TitleCultures_Titles] FOREIGN KEY ([TitleId]) REFERENCES [dbo].[Titles] ([Id])
);

