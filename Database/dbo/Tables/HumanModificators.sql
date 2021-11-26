CREATE TABLE [dbo].[HumanModificators] (
    [ModificatorId] INT           NOT NULL,
    [HumanId]       BIGINT        NOT NULL,
    [ValidUntil]    DATETIME2 (7) NOT NULL,
    [IsValid]       BIT           NOT NULL,
    CONSTRAINT [PK_HumanModificators] PRIMARY KEY CLUSTERED ([ModificatorId] ASC, [HumanId] ASC),
    CONSTRAINT [FK_HumanModificators_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_HumanModificators_Modificators] FOREIGN KEY ([ModificatorId]) REFERENCES [dbo].[Modificators] ([Id])
);

