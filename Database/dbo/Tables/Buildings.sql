CREATE TABLE [dbo].[Buildings] (
    [Id]             INT IDENTITY (1, 1) NOT NULL,
    [BuildingTypeId] INT NOT NULL,
    [SettlementId]   INT NOT NULL,
    [Level]          INT NOT NULL,
    CONSTRAINT [PK_Buildings] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_Buildings_BuildingTypeId] UNIQUE ([BuildingTypeId], [SettlementId]),
    CONSTRAINT [FK_Buildings_BuildingTypes] FOREIGN KEY ([BuildingTypeId]) REFERENCES [dbo].[BuildingTypes] ([Id]),
    CONSTRAINT [FK_Buildings_Settlements] FOREIGN KEY ([SettlementId]) REFERENCES [dbo].[Settlements] ([Id])
);

