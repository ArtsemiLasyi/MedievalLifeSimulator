CREATE TABLE [dbo].[FractionAims] (
    [Id]   INT           NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_FractionAims] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE UNIQUE INDEX [UQ_FractionAims_Name] ON [dbo].[FractionAims] ([Name])
