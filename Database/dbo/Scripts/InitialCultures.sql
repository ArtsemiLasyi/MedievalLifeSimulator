SET IDENTITY_INSERT [dbo].[Cultures] ON

MERGE INTO [dbo].[Cultures]
USING (VALUES 
    (1, 'Norse'),
    (2, 'Swedish'),
    (3, 'Norwegian'),
    (4, 'Danish'),
    (5, 'German'),
    (6, 'Lombard'),
    (7, 'Frankish'),
    (8, 'Suebi'),
    (9, 'English'),
    (10, 'Anglo-Saxon'),
    (11, 'Saxon'),
    (12, 'Frisian'),
    (13, 'Dutch'),
    (14, 'French'),
    (15, 'Norman'),
    (16, 'Italian'),
    (17, 'Occitan'),
    (18, 'Roman'),
    (19, 'Dalmatian'),
    (20, 'Outremer'),
    (21, 'Basque'),
    (22, 'Castilian'),
    (23, 'Catalan'),
    (24, 'Portuguese'),
    (25, 'Visigothic'),
    (26, 'Arberian'),
    (27, 'Armenian'),
    (28, 'Greek'),
    (29, 'Alan'),
    (30, 'Georgian'),
    (31, 'Assyrian'),
    (32, 'Coptic'),
    (33, 'Gothic'),
    (34, 'Irish'),
    (35, 'Scottish'),
    (36, 'Pictish'),
    (37, 'Welsh'),
    (38, 'Breton')) AS [NewCultures] ([Id], [Name])
ON [dbo].[Cultures].[Id] = [dbo].[NewCultures].[Id]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([Id], [Name]) 
    VALUES ([NewCultures].[Id], [NewCultures].[Name]);

SET IDENTITY_INSERT [dbo].[Cultures] OFF