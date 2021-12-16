CREATE TABLE [dbo].[Modificators] (
    [Id]   INT           NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Modificators] PRIMARY KEY CLUSTERED ([Id] ASC)
);

GO

CREATE UNIQUE INDEX [UQ_Modificators_Name] ON [dbo].[Modificators] ([Name])
