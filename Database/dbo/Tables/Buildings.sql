CREATE TABLE [dbo].[Buildings] (
    [Id]             INT IDENTITY (1, 1) NOT NULL,
    [BuildingTypeId] INT NOT NULL,
    [SeattlementId]  INT NOT NULL,
    [Level]          INT NOT NULL,
    CONSTRAINT [PK_Buildings] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Buildings_BuildingTypes] FOREIGN KEY ([BuildingTypeId]) REFERENCES [dbo].[BuildingTypes] ([Id]),
    CONSTRAINT [FK_Buildings_Settlements] FOREIGN KEY ([SeattlementId]) REFERENCES [dbo].[Settlements] ([Id])
);

