CREATE TABLE [dbo].[BuildingTypes] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (50) NOT NULL,
    [BaseIncome]   NUMERIC (18)  NOT NULL,
    [BaseGarrison] INT           NOT NULL,
    [BaseSoldiers] INT           NOT NULL,
    CONSTRAINT [PK_BuildingTypes] PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [CK_BuildingTypes_BaseGarrison] CHECK ([BaseGarrison] >= 0), 
    CONSTRAINT [CK_BuildingTypes_BaseSoldiers] CHECK ([BaseSoldiers] >= 0), 
    CONSTRAINT [CK_BuildingTypes_BaseIncome] CHECK ([BaseIncome] >= 0)
);

