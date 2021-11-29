CREATE TABLE [dbo].[DynastyHeads] (
    [DynastyId] INT    NOT NULL,
    [HeadId]    BIGINT NOT NULL,
    [HeirId]    BIGINT NOT NULL,
    CONSTRAINT [PK_DynastyHeads] PRIMARY KEY CLUSTERED ([DynastyId] ASC),
    CONSTRAINT [FK_DynastyHeads_Dynasties] FOREIGN KEY ([DynastyId]) REFERENCES [dbo].[Dynasties] ([Id]),
    CONSTRAINT [FK_DynastyHeads_Humans] FOREIGN KEY ([HeadId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_DynastyHeads_Humans_02] FOREIGN KEY ([HeirId]) REFERENCES [dbo].[Humans] ([Id])
);

