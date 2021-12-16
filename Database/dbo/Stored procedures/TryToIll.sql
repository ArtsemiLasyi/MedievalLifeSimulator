CREATE PROCEDURE [dbo].[HumanTryToIll]
    @humanId bigint
AS
BEGIN
    IF(
        EXISTS(
            SELECT
                *
            FROM
                [Epidemics]
            JOIN [SettlementEpidemics]
                ON [Epidemics].[Id] = [SettlementEpidemics].[EpidemicId]
            JOIN [Humans]
                ON [Humans].[SettlementLocationId] = [SettlementEpidemics].[SettlementId]
            WHERE
                [Humans].[Id] = @humanId

        )
    )
    BEGIN
        DECLARE @result BIT = GetResultFromProbability(30);
    END;
END;