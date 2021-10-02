CREATE TABLE [dbo].[Traits] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Traits] PRIMARY KEY CLUSTERED ([Id] ASC)
);

