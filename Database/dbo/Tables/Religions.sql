CREATE TABLE [dbo].[Religions] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50) NOT NULL,
    [LeaderId] BIGINT        NULL,
    CONSTRAINT [PK_Religions] PRIMARY KEY CLUSTERED ([Id] ASC)
);



GO

CREATE UNIQUE INDEX [UQ_Religions_Name] ON [dbo].[Religions] ([Name]);

GO
CREATE NONCLUSTERED INDEX [IXFK_Religions_Humans]
    ON [dbo].[Religions]([LeaderId] ASC);

