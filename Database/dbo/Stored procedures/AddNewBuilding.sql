CREATE PROCEDURE [dbo].[AddNewBuilding]
    @settlementId int,
    @buildingTypeId int
AS
    
    DECLARE @buildingCost INT;
    DECLARE @rulerGoldNumber INT;
    DECLARE @rulerId BIGINT; 

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

    INSERT INTO [Buildings] 
    (
        [BuildingTypeId],
        [SettlementId],
        [Level]
    )
    VALUES
    (
        @buildingTypeId,
        @settlementId,
        1
    )

    UPDATE 
        [HumanWealths]
    SET
        [GoldNumber] = [GoldNumber] - @rulerGoldNumber
    WHERE
        [HumanId] = @rulerId

RETURN 0
