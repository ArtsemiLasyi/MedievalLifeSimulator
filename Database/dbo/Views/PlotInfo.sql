CREATE VIEW [dbo].[PlotInfo]
AS 
    SELECT
        [Plots].[Id] AS [PlotId],
        [Plots].[TargetId] AS [PlotTargetId],
        [Plots].[InitiatorId] AS [PlotIniatiatorId],
        [Plots].[PlotTypeId] AS [PlotTypeId],
        [PlotTypes].[Name] AS [PlotTypeName],
        [Plots].[Power] AS [PlotPower],
        [HumanPlots].[HumanId] AS [PlotParticipantId],
        [HumanPlots].[Power] AS [PlotParticipantPower]
    FROM 
        [Plots]
    JOIN [PlotTypes]
        ON [Plots].[PlotTypeId] = [PlotTypes].[Id]
    JOIN [HumanPlots]
        ON [HumanPlots].[PlotId] = [Plots].[Id]
