CREATE TABLE [dbo].[HumanTraits] (
    [HumanId] BIGINT NOT NULL,
    [TraitId] INT    NOT NULL,
    CONSTRAINT [PK_HumanTraits] PRIMARY KEY CLUSTERED ([TraitId] ASC, [HumanId] ASC),
    CONSTRAINT [FK_HumanTraits_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_HumanTraits_Traits] FOREIGN KEY ([TraitId]) REFERENCES [dbo].[Traits] ([Id])
);

