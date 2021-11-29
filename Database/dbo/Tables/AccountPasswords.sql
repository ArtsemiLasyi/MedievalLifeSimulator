CREATE TABLE [dbo].[AccountPasswords] (
    [AccountId]    BIGINT      NOT NULL,
    [PasswordHash] BINARY (32) NOT NULL,
    [Salt]         BINARY (20) NOT NULL,
    CONSTRAINT [PK_AccountPasswords] PRIMARY KEY CLUSTERED ([AccountId] ASC),
    CONSTRAINT [FK_AccountPasswords_Accounts] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Accounts] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
);

