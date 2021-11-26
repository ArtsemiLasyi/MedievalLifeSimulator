CREATE TABLE [dbo].[Choices] (
    [Id]              INT NOT NULL,
    [EventTypeId]     INT NOT NULL,
    [RequiredTraitId] INT NULL,
    CONSTRAINT [PK_Choices] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Choices_EventTypes] FOREIGN KEY ([EventTypeId]) REFERENCES [dbo].[EventTypes] ([Id]),
    CONSTRAINT [FK_Choices_Traits] FOREIGN KEY ([RequiredTraitId]) REFERENCES [dbo].[Traits] ([Id])
);

