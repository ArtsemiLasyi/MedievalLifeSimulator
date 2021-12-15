CREATE TRIGGER [CheckJoinFraction]
ON [dbo].[FractionParticipants]
FOR INSERT, UPDATE
AS
BEGIN
    IF (
        EXISTS(
            SELECT
                *
            FROM
                [inserted]
            JOIN [Fractions]
                ON [Fractions].[Id] = [inserted].[FractionId]
            WHERE
                [inserted].[TitleId] = [Fractions].[TargetTitleId]
        )
    )
    BEGIN
        RAISERROR ('Title cannot join the fraction against itself', 16, 1);  
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END