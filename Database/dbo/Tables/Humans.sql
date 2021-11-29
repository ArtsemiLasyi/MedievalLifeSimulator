CREATE TABLE [dbo].[Humans] (
    [Id]        BIGINT        IDENTITY (1, 1) NOT NULL,
    [DynastyId] INT           NULL,
    [FatherId]  BIGINT        NULL,
    [MotherId]  BIGINT        NULL,
    [Age]       INT           NOT NULL,
    [Name]      NVARCHAR (50) NOT NULL,
    [Alive]     BIT           NOT NULL,
    CONSTRAINT [PK_Humans] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Humans_Age] CHECK ([Age]>=(0)),
    CONSTRAINT [FK_Humans_Dynasties] FOREIGN KEY ([DynastyId]) REFERENCES [dbo].[Dynasties] ([Id]),
    CONSTRAINT [FK_Humans_Humans_Father] FOREIGN KEY ([FatherId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Humans_Humans_Mother] FOREIGN KEY ([MotherId]) REFERENCES [dbo].[Humans] ([Id])
);

