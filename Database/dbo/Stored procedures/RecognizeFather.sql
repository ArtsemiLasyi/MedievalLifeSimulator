CREATE PROCEDURE [dbo].[RecognizeFather]
    @humanId BIGINT,
    @fatherId BIGINT
AS
    UPDATE 
        [dbo].[Humans] 
    SET 
        [FatherId] = @fatherId
    WHERE 
        [Id] = @humanId