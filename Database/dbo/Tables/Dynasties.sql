﻿CREATE TABLE [dbo].[Dynasties] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Dynasties] PRIMARY KEY CLUSTERED ([Id] ASC)
);

