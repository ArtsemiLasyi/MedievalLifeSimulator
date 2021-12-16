CREATE TABLE [dbo].[Armies]
(
    [Guid] UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    [NumberOfSoldiers] INT NOT NULL,
    [Commander] BIGINT NOT NULL,
    [Location] INT NOT NULL,
    CONSTRAINT [CK_Armies_NumberOfSoldiers] CHECK ([NumberOfSoldiers] >= 0), 
    CONSTRAINT [FK_Armies_Humans] FOREIGN KEY ([Commander]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Armies_Settlements] FOREIGN KEY ([Location]) REFERENCES [dbo].[Settlements] ([Id])
)
