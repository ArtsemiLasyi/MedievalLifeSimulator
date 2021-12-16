CREATE TABLE [dbo].[Titles] (
    [Id]               INT           NOT NULL,
    [Name]             NVARCHAR (50) NOT NULL,
    [DeJureSuzerenId]  INT           NULL,
    [DeFactoSuzerenId] INT           NULL,
    [RulerId]          BIGINT        NULL,
    [TitleTypeId]      INT           NOT NULL,
    CONSTRAINT [PK_Counties] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Titles_TitleTypes] FOREIGN KEY ([TitleTypeId]) REFERENCES [dbo].[TitleTypes] ([Id]),
    CONSTRAINT [FK_Tituls_Humans] FOREIGN KEY ([RulerId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Tituls_Tituls] FOREIGN KEY ([DeJureSuzerenId]) REFERENCES [dbo].[Titles] ([Id]),
    CONSTRAINT [FK_Tituls_Tituls_02] FOREIGN KEY ([DeFactoSuzerenId]) REFERENCES [dbo].[Titles] ([Id])
);




GO

CREATE INDEX [IX_Titles_DeFactoSuzerenId] ON [dbo].[Titles] ([DeFactoSuzerenId])

GO

CREATE INDEX [IX_Titles_RulerId] ON [dbo].[Titles] ([RulerId])
