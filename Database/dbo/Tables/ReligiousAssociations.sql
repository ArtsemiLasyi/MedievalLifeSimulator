CREATE TABLE [dbo].[ReligiousAssociations] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [Name]                NVARCHAR (50) NOT NULL,
    [ReligionId]          INT           NOT NULL,
    [PointsToUpgradeRank] INT           NOT NULL,
    CONSTRAINT [PK_ReligiousAssociations] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_ReligiousAssociations_PointsToUpgradeRank] CHECK ([PointsToUpgradeRank]>(0)),
    CONSTRAINT [FK_ReligiousAssociations_Religions] FOREIGN KEY ([ReligionId]) REFERENCES [dbo].[Religions] ([Id])
);



