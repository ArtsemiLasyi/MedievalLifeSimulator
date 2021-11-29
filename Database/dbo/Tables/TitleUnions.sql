CREATE TABLE [dbo].[TitleUnions] (
    [TitleId] INT NOT NULL,
    [UnionId] INT NOT NULL,
    CONSTRAINT [PK_TitleUnions] PRIMARY KEY CLUSTERED ([TitleId] ASC, [UnionId] ASC),
    CONSTRAINT [FK_TitleUnions_Titles] FOREIGN KEY ([TitleId]) REFERENCES [dbo].[Titles] ([Id]),
    CONSTRAINT [FK_TitleUnions_Unions] FOREIGN KEY ([UnionId]) REFERENCES [dbo].[Unions] ([Id])
);

