CREATE FUNCTION [dbo].[GetFractionPower] (@fractionId int)
RETURNS INT
AS
BEGIN
    DECLARE @fractionPower INT;

    SELECT
        @fractionPower = SUM([dbo].[GetNumberOfSoldiersFor]([Titles].[RulerId]))
    FROM
        [FractionParticipants]
    JOIN [Titles]
        ON [FractionParticipants].[FractionId] = [Titles].[Id]
    WHERE
        [FractionParticipants].[FractionId] = @fractionId

    RETURN @fractionPower;
END
