CREATE VIEW [dbo].[TraitInfo]
AS 
    SELECT
        *
    FROM 
        [Traits]
    JOIN [TraitAbilities]
        ON [TraitAbilities].[TraitId] = [Traits].[Id]