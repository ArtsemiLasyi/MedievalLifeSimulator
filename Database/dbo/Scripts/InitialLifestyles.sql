SET IDENTITY_INSERT [dbo].[Lifestyles] ON

MERGE INTO [dbo].[Lifestyles]
USING (VALUES 
    (1, 'Rulership'),
    (2, 'Business'),
    (3, 'Seduction'),
    (4, 'Intrigue'),
    (5, 'Hunting'),
    (6, 'War'),
    (7, 'Carousing'),
    (8, 'Family'),
    (9, 'Scholarship'),
    (10, 'Theology')) AS [NewLifestyles] ([Id], [Name])
ON [dbo].[Lifestyles].[Id] = [dbo].[NewLifestyles].[Id]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([Id], [Name]) 
    VALUES ([NewLifestyles].[Id], [NewLifestyles].[Name]);

SET IDENTITY_INSERT [dbo].[Lifestyles] OFF