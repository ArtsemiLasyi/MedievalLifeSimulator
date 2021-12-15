CREATE PROCEDURE [dbo].[CreateNewHuman]
    @fatherId int = NULL,
    @motherId int = NULL
AS
    DECLARE @dynastyId INT;
    DECLARE @cultureId INT;
    DECLARE @location INT;

    SELECT
        @location = [SettlementLocationId]
    FROM
        [Humans]
    WHERE
        [Id] = @motherId

    SELECT
        @dynastyId = [Id],
        @cultureId = [CultureId]
    FROM
        [Humans]
    JOIN [HumanEducations]
        ON [Humans].[Id] = [HumanEducations].[CultureId]
    WHERE
        [Id] = @fatherId

    INSERT INTO [Humans] 
    (
        [Name], 
        [FatherId],
        [MotherId],
        [DynastyId],
        [Age],
        [Alive],
        [SettlementLocationId]
    )
    VALUES
    (
        GetRandomName(@cultureId),
        @fatherId,
        @motherId,
        @dynastyId,
        0,
        1,
        @location
    )

RETURN 0;