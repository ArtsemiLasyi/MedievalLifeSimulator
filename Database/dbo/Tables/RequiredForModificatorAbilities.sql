CREATE TABLE [dbo].[RequiredForModificatorAbilities] (
    [ModificatorId]      INT NOT NULL,
    [RequiredIntrigue]   INT NOT NULL,
    [RequiredManagement] INT NOT NULL,
    [RequiredMartial]    INT NOT NULL,
    [RequiredEducation]  INT NOT NULL,
    [RequiredDiplomacy]  INT NOT NULL,
    CONSTRAINT [PK_RequiredForModificatorAbilities] PRIMARY KEY CLUSTERED ([ModificatorId] ASC),
    CONSTRAINT [FK_RequiredForModificatorAbilities_Modificators] FOREIGN KEY ([ModificatorId]) REFERENCES [dbo].[Modificators] ([Id])
);

