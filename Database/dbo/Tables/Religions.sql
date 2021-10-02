﻿CREATE TABLE [dbo].[Religions] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50) NOT NULL,
    [LeaderId] BIGINT        NULL,
    CONSTRAINT [PK_Religions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Religions_Humans] FOREIGN KEY ([LeaderId]) REFERENCES [dbo].[Humans] ([Id])
);




GO
CREATE NONCLUSTERED INDEX [IXFK_Religions_Humans]
    ON [dbo].[Religions]([LeaderId] ASC);

