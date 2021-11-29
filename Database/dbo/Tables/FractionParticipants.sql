CREATE TABLE [dbo].[FractionParticipants] (
    [FractionId] INT NOT NULL,
    [TitleId]    INT NOT NULL,
    CONSTRAINT [PK_FractionParticipants] PRIMARY KEY CLUSTERED ([FractionId] ASC, [TitleId] ASC),
    CONSTRAINT [FK_FractionParticipants_Fractions] FOREIGN KEY ([FractionId]) REFERENCES [dbo].[Fractions] ([Id]),
    CONSTRAINT [FK_FractionParticipants_Titles] FOREIGN KEY ([TitleId]) REFERENCES [dbo].[Titles] ([Id])
);

