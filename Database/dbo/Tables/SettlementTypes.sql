CREATE TABLE [dbo].[SettlementTypes] (
    [Id]   INT          IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR(50) NULL,
    CONSTRAINT [PK_SettlementTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

