CREATE TABLE [dbo].[Epidemics] (
    [Id]             INT NOT NULL,
    [EpidemicTypeId] INT NOT NULL,
    [Power]          INT NOT NULL,
    CONSTRAINT [PK_Epidemics] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Epidemics_EpidemicTypes] FOREIGN KEY ([EpidemicTypeId]) REFERENCES [dbo].[EpidemicTypes] ([Id])
);

