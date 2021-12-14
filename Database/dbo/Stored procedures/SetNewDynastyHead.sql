CREATE PROCEDURE [dbo].[SetNewDynastyHead]
    @dynastyId int
AS
    UPDATE 
        [DynastyHeads]
    SET 
        [HeadId] = [HeirId]

    UPDATE
        [DynastyHeads]
    SET
        [HeirId] = (
            SELECT TOP 1
                [Humans].[Id]
            FROM
                [Humans]
            WHERE
                [Humans].[Alive] = 1
            ORDER BY
                [Humans].Age
        )
RETURN 0;