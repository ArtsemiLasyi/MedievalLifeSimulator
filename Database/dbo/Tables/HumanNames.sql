CREATE TABLE [dbo].[HumanNames]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [CultureId] INT NOT NULL, 
    CONSTRAINT [FK_HumanNames_Cultures] FOREIGN KEY ([Column]) REFERENCES [ToTable]([ToTableColumn]), 
)
