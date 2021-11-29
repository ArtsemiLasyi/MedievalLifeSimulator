CREATE TABLE [dbo].[BuildingTypes] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (50) NOT NULL,
    [BaseIncome]   NUMERIC (18)  NULL,
    [BaseGarrison] INT           NULL,
    [BaseSoldiers] INT           NULL,
    CONSTRAINT [PK_BuildingTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

