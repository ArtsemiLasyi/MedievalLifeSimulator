CREATE TABLE [dbo].[Wars] (
    [Id]           INT IDENTITY (1, 1) NOT NULL,
    [AttackersId]  INT NOT NULL,
    [DefendesrId]  INT NOT NULL,
    [CasusBelliId] INT NOT NULL,
    [Rate] INT NOT NULL, 
    CONSTRAINT [PK_Kingdoms] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Wars_CasusBellies] FOREIGN KEY ([CasusBelliId]) REFERENCES [dbo].[CasusBellies] ([Id]),
    CONSTRAINT [FK_Wars_Unions-Attackers] FOREIGN KEY ([AttackersId]) REFERENCES [dbo].[Unions] ([Id]),
    CONSTRAINT [FK_Wars_Unions-Defenders] FOREIGN KEY ([DefendesrId]) REFERENCES [dbo].[Unions] ([Id]), 
    CONSTRAINT [CK_Wars_Rate] CHECK ([Rate] >= -100 AND [Rate] <= 100)
);



