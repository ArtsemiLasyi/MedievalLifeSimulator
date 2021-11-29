CREATE TABLE [dbo].[Friendships] (
    [FirstFriendId]  BIGINT NOT NULL,
    [SecondFriendId] BIGINT NOT NULL,
    CONSTRAINT [PK_Friendships] PRIMARY KEY CLUSTERED ([FirstFriendId] ASC, [SecondFriendId] ASC),
    CONSTRAINT [FK_Friendships_Humans_FirstFriend] FOREIGN KEY ([FirstFriendId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Friendships_Humans_SecondFriend] FOREIGN KEY ([SecondFriendId]) REFERENCES [dbo].[Humans] ([Id])
);

