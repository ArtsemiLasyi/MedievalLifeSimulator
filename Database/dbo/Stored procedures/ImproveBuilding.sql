CREATE PROCEDURE [dbo].[ImproveBuilding]
    @buildingId int
AS
    DECLARE @settlementId INT;
    DECLARE @buildingCost INT;
    DECLARE @buildingTypeId INT;
    DECLARE @rulerGoldNumber INT;
    DECLARE @rulerId BIGINT; 

    SELECT
        @buildingTypeId = [BuildingTypeId],
        @settlementId = [SettlementId]
    FROM
        [Buildings]
    WHERE
        [Buildings].[Id] = @buildingId

    SELECT
        @buildingCost = [BaseCost]
    FROM
        [BuildingTypes]
    WHERE
        [Id] = @buildingTypeId

    SELECT
        @rulerGoldNumber = [GoldNumber],
        @rulerId = [HumanWealths].[HumanId]
    FROM
        [Settlements]
    JOIN [Titles]
        ON [Settlements].[TitleId] = [Titles].[Id]
    JOIN [HumanWealths]
        ON [HumanWealths].[HumanId] = [Titles].[RulerId]
    WHERE
        [Settlements].[Id] = @settlementId

    IF (@rulerGoldNumber < @buildingCost)
    BEGIN
        RAISERROR ('Not enough gold', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;

    UPDATE 
        [Buildings]
    SET
        [Level] = [Level] + 1
    WHERE
        [Id] = @buildingId

    UPDATE 
        [HumanWealths]
    SET
        [GoldNumber] = [GoldNumber] - @rulerGoldNumber
    WHERE
        [HumanId] = @rulerId
RETURN 0
