CREATE TABLE [dbo].[Fractions] (
    [FractionAimId] INT NOT NULL,
    [Id]            INT NOT NULL,
    [TargetTitleId] INT NOT NULL,
    CONSTRAINT [PK_Fractions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Fractions_FractionAims] FOREIGN KEY ([FractionAimId]) REFERENCES [dbo].[FractionAims] ([Id]),
    CONSTRAINT [FK_Fractions_Titles] FOREIGN KEY ([TargetTitleId]) REFERENCES [dbo].[Titles] ([Id])
);



