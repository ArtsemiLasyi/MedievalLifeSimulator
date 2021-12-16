CREATE TABLE [dbo].[CasusBelliTypes] (
    [Id]   INT           NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_CasusBelliTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE UNIQUE INDEX [UQ_CasusBelliTypes_Name] ON [dbo].[CasusBelliTypes] ([Name])
