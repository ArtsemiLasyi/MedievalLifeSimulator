CREATE TABLE [dbo].[HumanNames]
(
    [Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [CultureId] INT NOT NULL,
    [IsManName] BIT NOT NULL,
    CONSTRAINT [FK_HumanNames_Cultures] FOREIGN KEY ([CultureId]) REFERENCES [Cultures]([Id])
)

GO

CREATE UNIQUE INDEX [UQ_HumanNames_Name] ON [dbo].[HumanNames] ([Name])

GO

CREATE INDEX [IX_HumanNames_CultureId] ON [dbo].[HumanNames] ([CultureId])