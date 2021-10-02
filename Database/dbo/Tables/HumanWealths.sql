CREATE TABLE [dbo].[HumanWealths] (
    [HumanId]        BIGINT NOT NULL,
    [GoldNumber]     INT    NOT NULL,
    [PrestigeNumber] INT    NOT NULL,
    [PietyNumber]    INT    NOT NULL,
    CONSTRAINT [PK_HumanWealths] PRIMARY KEY CLUSTERED ([HumanId] ASC),
    CONSTRAINT [FK_HumanWealths_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id])
);

