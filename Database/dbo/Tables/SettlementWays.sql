CREATE TABLE [dbo].[SettlementWays]
(
    [FirstSettlementId] INT NOT NULL , 
    [SecondSettlementId] INT NOT NULL, 
    PRIMARY KEY ([SecondSettlementId], [FirstSettlementId])
)
