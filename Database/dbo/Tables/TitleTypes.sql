CREATE TABLE [dbo].[TitleTypes] (
    [Id]    INT IDENTITY (1, 1) NOT NULL,
    [Level] INT NOT NULL,
    CONSTRAINT [PK_TitleTypes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK-TitleTypes_Level] CHECK ([Level]>=(1) AND [Level]<=(5)),
    CONSTRAINT [UQ_TitleTypes_Level] UNIQUE NONCLUSTERED ([Level] ASC)
);

