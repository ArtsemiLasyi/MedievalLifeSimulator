CREATE PROCEDURE [dbo].[ChangeWealthForEveryone]
AS
    UPDATE
        [HumanWealths] 
    SET [GoldNumber] = [GoldNumber] + GetIncomeFor([HumanWealths].[HumanId])
RETURN 0;
