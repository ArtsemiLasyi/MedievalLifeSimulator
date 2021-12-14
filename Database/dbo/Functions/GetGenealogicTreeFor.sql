CREATE FUNCTION GetgenealogicTreeFor(@humanId INT)
RETURNS @children TABLE
(
    Id bigint
)
AS
BEGIN
    WITH [tree] ([Id], [ParentId])
    AS
    (
        SELECT 
            [Id],
            [FatherId] AS [ParentId]
        FROM 
            [Humans]
        WHERE 
            [Id] = @humanId
        UNION ALL
            SELECT 
                [inner].[Id],
                [inner].[FatherId]
            FROM 
                [Humans] AS [inner]
            JOIN [tree]
                ON [inner].[FatherId] = [tree].[Id]
    )

    INSERT INTO @children
    SELECT 
        CAST([Id] AS VARCHAR)
    FROM 
        [tree]
    WHERE 
        [Id] != @humanId

    RETURN;
END;
