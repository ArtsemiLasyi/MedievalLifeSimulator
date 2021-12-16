CREATE TABLE [dbo].[Educations] (
    [EducationTypeId] INT           NOT NULL,
    [Degree]          INT           NOT NULL,
    [NameOfDegree]    NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Educations] PRIMARY KEY CLUSTERED ([EducationTypeId] ASC),
    CONSTRAINT [FK_Educations_EducationTypes] FOREIGN KEY ([EducationTypeId]) REFERENCES [dbo].[EducationTypes] ([Id])
);

