CREATE TABLE [dbo].[Plots] (
    [TargetId]    BIGINT NOT NULL,
    [InitiatorId] BIGINT NOT NULL,
    [PlotTypeId]  INT    NOT NULL,
    [Power]       INT    NOT NULL,
    [Id]          INT    NOT NULL,
    CONSTRAINT [PK_Plots_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [CK_Plots_Power] CHECK ([Power]>=(0)),
    CONSTRAINT [FK_Plots_Humans] FOREIGN KEY ([InitiatorId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Plots_Humans_Target] FOREIGN KEY ([TargetId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Plots_PlotTypes] FOREIGN KEY ([PlotTypeId]) REFERENCES [dbo].[PlotTypes] ([Id])
);

