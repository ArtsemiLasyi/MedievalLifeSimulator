CREATE TABLE [dbo].[EventTypeTraits] (
    [EventTypeId] INT NOT NULL,
    [TraitId]     INT NOT NULL,
    CONSTRAINT [PK_EventTypeTraits] PRIMARY KEY CLUSTERED ([EventTypeId] ASC, [TraitId] ASC),
    CONSTRAINT [FK_EventTypeTraits_EventTypes] FOREIGN KEY ([EventTypeId]) REFERENCES [dbo].[EventTypes] ([Id]),
    CONSTRAINT [FK_EventTypeTraits_Traits] FOREIGN KEY ([TraitId]) REFERENCES [dbo].[Traits] ([Id])
);

