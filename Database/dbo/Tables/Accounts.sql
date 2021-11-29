CREATE TABLE [dbo].[Accounts] (
    [Id]        BIGINT         IDENTITY (1, 1) NOT NULL,
    [Email]     NVARCHAR (320) NOT NULL,
    [Nickname]  NVARCHAR (50)  NOT NULL,
    [HumanId]   BIGINT         NULL,
    [DynastyId] INT            NULL,
    CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Accounts_Dynasties] FOREIGN KEY ([DynastyId]) REFERENCES [dbo].[Dynasties] ([Id]),
    CONSTRAINT [FK_Accounts_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [UQ_Accounts_Email] UNIQUE NONCLUSTERED ([Email] ASC)
);



