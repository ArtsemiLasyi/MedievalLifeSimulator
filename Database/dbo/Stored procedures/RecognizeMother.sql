CREATE PROCEDURE [dbo].[RecognizeMother]
    @humanId BIGINT,
    @motherId BIGINT
AS
    UPDATE 
        [dbo].[Humans] 
    SET 
        [MotherId] = @motherId
    WHERE 
        [Id] = @humanId
