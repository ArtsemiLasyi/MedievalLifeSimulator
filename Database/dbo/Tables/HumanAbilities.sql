CREATE TABLE [dbo].[HumanAbilities] (
    [HumanId]    BIGINT NOT NULL,
    [Martial]    INT    NOT NULL,
    [Intrigue]   INT    NOT NULL,
    [Management] INT    NOT NULL,
    [Education]  INT    NOT NULL,
    [Diplomacy]  INT    NOT NULL,
    CONSTRAINT [PK_HumanAbilities] PRIMARY KEY CLUSTERED ([HumanId] ASC),
    CONSTRAINT [FK_HumanAbilities_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id])
);

