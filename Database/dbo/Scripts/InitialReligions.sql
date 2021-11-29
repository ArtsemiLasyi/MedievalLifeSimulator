SET IDENTITY_INSERT [dbo].[Religions] ON

MERGE INTO [dbo].[Religions]
USING (VALUES 
    (1, 'Christian'),
    (2, 'Israelite'),
    (3, 'Islam'),
    (4, 'Pagan'),
    (5, 'Mazdan'),
    (6, 'Eastern')) AS [NewReligions] ([Id], [Name])
ON [dbo].[Religions].[Id] = [dbo].[NewReligions].[Id]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([Id], [Name]) 
    VALUES ([NewReligions].[Id], [NewReligions].[Name]);

SET IDENTITY_INSERT [dbo].[Religions] OFF