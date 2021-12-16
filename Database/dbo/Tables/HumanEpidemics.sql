CREATE TABLE [dbo].[HumanEpidemics]
(
    [HumanId] BIGINT NOT NULL,
    [EpidemicTypeId] INT NOT NULL, 
    CONSTRAINT [PK_HumanEpidemics] PRIMARY KEY ([HumanId], [EpidemicTypeId]), 
    CONSTRAINT [FK_HumanEpidemics_Humans] FOREIGN KEY ([HumanId]) REFERENCES [Humans]([Id]), 
    CONSTRAINT [FK_HumanEpidemics_EpidemicTypes] FOREIGN KEY ([EpidemicTypeId]) REFERENCES [EpidemicTypes]([Id])
)
