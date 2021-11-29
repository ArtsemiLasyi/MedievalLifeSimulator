CREATE TABLE [dbo].[HumanEducations] (
    [HumanId]     BIGINT NOT NULL,
    [CultureId]   INT    NOT NULL,
    [EducationId] INT    NULL,
    [EducatorId]  BIGINT NULL,
    CONSTRAINT [PK_HumanEducations] PRIMARY KEY CLUSTERED ([HumanId] ASC, [CultureId] ASC),
    CONSTRAINT [FK_HumanEducations_Cultures] FOREIGN KEY ([CultureId]) REFERENCES [dbo].[Cultures] ([Id]),
    CONSTRAINT [FK_HumanEducations_Education] FOREIGN KEY ([EducationId]) REFERENCES [dbo].[Education] ([EducationTypeId]),
    CONSTRAINT [FK_HumanEducations_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_HumanEducations_Humans1] FOREIGN KEY ([EducatorId]) REFERENCES [dbo].[Humans] ([Id])
);

