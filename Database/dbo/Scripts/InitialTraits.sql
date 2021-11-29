SET IDENTITY_INSERT [dbo].[Traits] ON

MERGE INTO [dbo].[Traits]
USING (VALUES 
    (1, 'Theologian'),
    (2, 'Socializer'),
    (3, 'Strategist'),
    (4, 'Architect'),
    (5, 'Administrator'),
    (6, 'Master Seductress'),
    (7, 'Master Seducer'),
    (8, 'Winter Expert'),
    (9, 'In Hiding'),
    (10, 'Jungle Expert'),
    (11, 'Decadent'),
    (12, 'Svetambara'),
    (13, 'Amateurish Plotter'),
    (14, 'Flamboyant Schemer'),
    (15, 'Intricate Webweaver'),
    (16, 'Elusive Shadow'),
    (17, 'Naive Appeaser'),
    (18, 'Underhanded Rogue'),
    (19, 'Charismatic Negotiator'),
    (20, 'Grey Eminence'),
    (21, 'Indulgent Wastrel'),
    (22, 'Thrifty Clerk'),
    (23, 'Fortune Builder'),
    (24, 'Midas Touched'),
    (25, 'Misguided Warrior'),
    (26, 'Tough Soldier'),
    (27, 'Skilled Tactician'),
    (28, 'Brilliant Strategist'),
    (29, 'Detached Priest'),
    (30, 'Dutiful Cleric'),
    (31, 'Scholarly Theologian'),
    (32, 'Mastermind Theologian'),
    (33, 'Stressed'),
    (34, 'Depressed'),
    (35, 'Lunatic'),
    (36, 'Possessed'),
    (37, 'Ill'),
    (38, 'Game Master')) AS [NewTraits] ([Id], [Name])
ON [dbo].[Traits].[Id] = [dbo].[NewTraits].[Id]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([Id], [Name]) 
    VALUES ([NewTraits].[Id], [NewTraits].[Name]);

SET IDENTITY_INSERT [dbo].[Traits] OFF