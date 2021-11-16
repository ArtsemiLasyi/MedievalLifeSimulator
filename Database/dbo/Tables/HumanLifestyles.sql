CREATE TABLE [dbo].[HumanLifestyles] (
    [HumanId]     BIGINT NOT NULL,
    [LifestyleId] INT    NOT NULL,
    [LastChanged] DATE   NOT NULL,
    CONSTRAINT [FK_HumanLifestyles_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_HumanLifestyles_Lifestyles] FOREIGN KEY ([LifestyleId]) REFERENCES [dbo].[Lifestyles] ([Id])
);

