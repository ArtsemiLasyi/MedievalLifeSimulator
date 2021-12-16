CREATE TABLE [dbo].[EpidemicTypes] (
    [Id]   INT           NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_EpidemicTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE UNIQUE INDEX [UQ_EpidemicTypes_Name] ON [dbo].[EpidemicTypes] ([Name])
