CREATE TABLE [dbo].[Education] (
    [EducationTypeId] INT           NOT NULL,
    [Degree]          INT           NOT NULL,
    [NameOfDegree]    NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED ([EducationTypeId] ASC),
    CONSTRAINT [FK_Education_EducationType] FOREIGN KEY ([EducationTypeId]) REFERENCES [dbo].[EducationType] ([Id])
);

