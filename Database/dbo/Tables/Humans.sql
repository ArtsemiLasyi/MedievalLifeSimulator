﻿CREATE TABLE [dbo].[Humans] (
    [Id]        BIGINT        IDENTITY (1, 1) NOT NULL,
    [DynastyId] INT           NULL,
    [FatherId]  BIGINT        NULL,
    [MotherId]  BIGINT        NULL,
    [Age]       INT           NOT NULL,
    [Name]      NVARCHAR (50) NOT NULL,
    [Alive]     BIT           NOT NULL,
    [SettlementLocationId] INT NOT NULL,
    [Gender] BIT NOT NULL, 
    CONSTRAINT [PK_Humans] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Humans_Age] CHECK ([Age]>=(0)),
    CONSTRAINT [FK_Humans_Dynasties] FOREIGN KEY ([DynastyId]) REFERENCES [dbo].[Dynasties] ([Id]),
    CONSTRAINT [FK_Humans_Humans_Father] FOREIGN KEY ([FatherId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Humans_Humans_Mother] FOREIGN KEY ([MotherId]) REFERENCES [dbo].[Humans] ([Id]), 
    CONSTRAINT [FK_Humans_Settlements] FOREIGN KEY ([SettlementLocationId]) REFERENCES [Settlements]([Id])
);


GO

CREATE INDEX [IX_Humans_DynastyId] ON [dbo].[Humans] ([DynastyId])

GO

CREATE NONCLUSTERED INDEX [IX_Humans_Id_Alive] ON [dbo].[Humans] ([Id]) WHERE [Alive] = 1
