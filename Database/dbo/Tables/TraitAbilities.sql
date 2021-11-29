CREATE TABLE [dbo].[TraitAbilities] (
    [TraitId]         INT NOT NULL,
    [BonusMartial]    INT NOT NULL,
    [BonusIntrigue]   INT NOT NULL,
    [BonusManagement] INT NOT NULL,
    [BonusDiplomacy]  INT NOT NULL,
    [BonusEducation]  INT NOT NULL,
    CONSTRAINT [PK_TraitAbilities] PRIMARY KEY CLUSTERED ([TraitId] ASC),
    CONSTRAINT [FK_TraitAbilities_Traits] FOREIGN KEY ([TraitId]) REFERENCES [dbo].[Traits] ([Id])
);

