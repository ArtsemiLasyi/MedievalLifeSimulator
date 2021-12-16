CREATE TABLE [dbo].[Cultures] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    CONSTRAINT [PK_Cultures] PRIMARY KEY CLUSTERED ([Id] ASC)
);

GO

CREATE UNIQUE INDEX [UQ_Cultures_Name] ON [dbo].[Cultures] ([Name])
