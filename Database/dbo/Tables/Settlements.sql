CREATE TABLE [dbo].[Settlements] (
    [Id]                INT           IDENTITY (1, 1) NOT NULL,
    [SettlementTypeId] INT           NOT NULL,
    [Name]              NVARCHAR (50) NOT NULL,
    [TitleId]           INT           NOT NULL,
    [IsOccupied] BIT NOT NULL, 
    CONSTRAINT [PK_Settlements] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Settlements_SettlementTypes] FOREIGN KEY ([SettlementTypeId]) REFERENCES [dbo].[SettlementTypes] ([Id]),
    CONSTRAINT [FK_Settlements_Titles] FOREIGN KEY ([TitleId]) REFERENCES [dbo].[Titles] ([Id])
);




GO

CREATE INDEX [IX_Settlements_TitleId] ON [dbo].[Settlements] ([TitleId])
