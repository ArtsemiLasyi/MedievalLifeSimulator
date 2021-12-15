CREATE TABLE [dbo].[AccountHumans]
(
    [AccountId] INT NOT NULL,
    [HumanId] INT NOT NULL, 
    CONSTRAINT [PK_AccountHumans] PRIMARY KEY ([HumanId], [AccountId]),
)
