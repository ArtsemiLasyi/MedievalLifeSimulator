CREATE TABLE [dbo].[ReligionTitleTypes] (
    [TitleTypeId] INT           NOT NULL,
    [ReligionId]  INT           NOT NULL,
    [Name]        NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ReligionTitleTypes] PRIMARY KEY CLUSTERED ([TitleTypeId] ASC, [ReligionId] ASC),
    CONSTRAINT [FK_ReligionTitleTypes_Religions] FOREIGN KEY ([ReligionId]) REFERENCES [dbo].[Religions] ([Id]),
    CONSTRAINT [FK_ReligionTitleTypes_TitleTypes] FOREIGN KEY ([TitleTypeId]) REFERENCES [dbo].[TitleTypes] ([Id])
);



