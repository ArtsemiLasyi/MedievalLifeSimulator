CREATE TABLE [dbo].[HumanPlots] (
    [HumanId] BIGINT NOT NULL,
    [PlotId]  INT    NOT NULL,
    [Power]   INT    NOT NULL,
    CONSTRAINT [CK_HumanPlots_Power] CHECK ([Power]>=(0)),
    CONSTRAINT [FK_HumanPlots_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_HumanPlots_Plots] FOREIGN KEY ([PlotId]) REFERENCES [dbo].[Plots] ([Id])
);

