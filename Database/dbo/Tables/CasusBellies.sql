CREATE TABLE [dbo].[CasusBellies] (
    [Id]            INT    NOT NULL,
    [HumanTargetId] BIGINT NULL,
    [TitleTargetId] INT    NULL,
    [TypeId]        INT    NOT NULL,
    CONSTRAINT [PK_CasusBellies] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CasusBellies_CasusBelliTypes] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[CasusBelliTypes] ([Id]),
    CONSTRAINT [FK_CasusBellies_Humans] FOREIGN KEY ([HumanTargetId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_CasusBellies_Titles] FOREIGN KEY ([TitleTargetId]) REFERENCES [dbo].[Titles] ([Id])
);

