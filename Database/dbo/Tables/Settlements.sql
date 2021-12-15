CREATE TABLE [dbo].[Settlements] (
    [Id]                INT           IDENTITY (1, 1) NOT NULL,
    [SeattlementTypeId] INT           NOT NULL,
    [Name]              NVARCHAR (50) NOT NULL,
    [TitleId]           INT           NOT NULL,
    CONSTRAINT [PK_Settlements] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Settlements_SettlementTypes] FOREIGN KEY ([SeattlementTypeId]) REFERENCES [dbo].[SettlementTypes] ([Id]),
    CONSTRAINT [FK_Settlements_Titles] FOREIGN KEY ([TitleId]) REFERENCES [dbo].[Titles] ([Id])
);



