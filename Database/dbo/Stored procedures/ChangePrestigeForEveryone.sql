CREATE PROCEDURE [dbo].[ChangePrestigeForEveryone]
AS
    UPDATE
        [HumanWealths] 
    SET 
        [PrestigeNumber] = [PrestigeNumber] + GetIncomeFor([HumanWealths].[HumanId])
RETURN 0
