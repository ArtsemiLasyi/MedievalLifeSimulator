CREATE TABLE [dbo].[Cultures] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Cultures] PRIMARY KEY CLUSTERED ([Id] ASC)
);

