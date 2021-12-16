CREATE TABLE [dbo].[EventTypes] (
    [Id]   INT           NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_EventTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE UNIQUE INDEX [UQ_EventTypes_Name] ON [dbo].[EventTypes] ([Name])
