CREATE PROCEDURE [dbo].[ChangeWealthForEveryone]
AS
    UPDATE
        [HumanWealths] 
    SET 
        [GoldNumber] = [GoldNumber] + GetGoldIncomeFor([HumanWealths].[HumanId])
RETURN 0;
