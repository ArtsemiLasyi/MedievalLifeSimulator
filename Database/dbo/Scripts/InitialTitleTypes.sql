SET IDENTITY_INSERT [dbo].[TitleTypes] ON

MERGE INTO [dbo].[TitleTypes]
USING (VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4)) AS [NewTitleTypes] ([Id], [Level])
ON [dbo].[TitleTypes].[Id] = [dbo].[NewTitleTypes].[Id]
WHEN NOT MATCHED BY TARGET THEN
    INSERT ([Id], [Level]) 
    VALUES ([NewTitleTypes].[Id], [NewTitleTypes].[Level]);

SET IDENTITY_INSERT [dbo].[TitleTypes] OFF