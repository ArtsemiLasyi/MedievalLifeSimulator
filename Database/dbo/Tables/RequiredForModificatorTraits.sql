CREATE TABLE [dbo].[RequiredForModificatorTraits] (
    [ModificatorId] INT NOT NULL,
    [TraitId]       INT NOT NULL,
    CONSTRAINT [PK_RequiredForModificatorTraits] PRIMARY KEY CLUSTERED ([ModificatorId] ASC, [TraitId] ASC),
    CONSTRAINT [FK_RequiredForModificatorTraits_Modificators] FOREIGN KEY ([ModificatorId]) REFERENCES [dbo].[Modificators] ([Id]),
    CONSTRAINT [FK_RequiredForModificatorTraits_Traits] FOREIGN KEY ([TraitId]) REFERENCES [dbo].[Traits] ([Id])
);

