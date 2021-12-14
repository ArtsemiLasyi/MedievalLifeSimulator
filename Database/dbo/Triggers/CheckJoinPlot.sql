CREATE TRIGGER [CheckJoinPlot]
ON [dbo].[HumanPlots]
FOR INSERT, UPDATE
AS
BEGIN
    IF (
        EXISTS(
            SELECT
                *
            FROM
                [inserted]
            JOIN [Plots]
                ON [Plots].[Id] = [inserted].[PlotId]
            WHERE
                [inserted].[HumanId] = [Plots].[TargetId]
        )
    )
    BEGIN
        RAISERROR ('Human cannot join the plot against himself', 16, 1);  
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END