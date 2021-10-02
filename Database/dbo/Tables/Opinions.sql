CREATE TABLE [dbo].[Opinions] (
    [FirstHumanId]  BIGINT NOT NULL,
    [SecondHumanId] BIGINT NOT NULL,
    [Value]         INT    NOT NULL,
    CONSTRAINT [PK_Opinions] PRIMARY KEY CLUSTERED ([FirstHumanId] ASC, [SecondHumanId] ASC),
    CONSTRAINT [CK_Relationships_Value] CHECK ([Value]>=(-200) AND [Value]<=(200)),
    CONSTRAINT [FK_Opinions_Humans] FOREIGN KEY ([FirstHumanId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Opinions_Humans1] FOREIGN KEY ([SecondHumanId]) REFERENCES [dbo].[Humans] ([Id])
);

