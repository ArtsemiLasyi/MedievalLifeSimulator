CREATE TABLE [dbo].[EducationTypes] (
    [Id]   INT           NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_EducationTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

GO

CREATE UNIQUE INDEX [UQ_EducationTypes_Name] ON [dbo].[EducationTypes] ([Name])
