CREATE TABLE [dbo].[Dynasties] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    [CultureId] INT NOT NULL, 
    CONSTRAINT [PK_Dynasties] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE INDEX [IX_Dynasties_CultureId] ON [dbo].[Dynasties] ([CultureId])
