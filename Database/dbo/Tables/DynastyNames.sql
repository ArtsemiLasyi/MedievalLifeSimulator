CREATE TABLE [dbo].[DynastyNames]
(
    [Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [CultureId] INT NOT NULL,
    [IsUsed] BIT NOT NULL, 
    CONSTRAINT [FK_DynastyNames_Cultures] FOREIGN KEY ([CultureId]) REFERENCES [Cultures]([Id])
)



GO

CREATE UNIQUE INDEX [UQ_DynastyNames_Name] ON [dbo].[DynastyNames] ([Name])

GO

CREATE INDEX [IX_DynastyNames_CultureId] ON [dbo].[DynastyNames] ([CultureId])
