CREATE TABLE [dbo].[SettlementEpidemics] (
    [EpidemicId]   INT NOT NULL,
    [SettlementId] INT NOT NULL,
    CONSTRAINT [PK_SettlementEpidemics] PRIMARY KEY CLUSTERED ([EpidemicId] ASC, [SettlementId] ASC),
    CONSTRAINT [FK_SettlementEpidemics_Epidemics] FOREIGN KEY ([EpidemicId]) REFERENCES [dbo].[Epidemics] ([Id]),
    CONSTRAINT [FK_SettlementEpidemics_Settlements] FOREIGN KEY ([SettlementId]) REFERENCES [dbo].[Settlements] ([Id])
);

