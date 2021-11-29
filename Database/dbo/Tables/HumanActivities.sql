CREATE TABLE [dbo].[HumanActivities] (
    [HumanId]                    BIGINT NOT NULL,
    [ReligionId]                 INT    NOT NULL,
    [ReligiousAssociationId]     INT    NULL,
    [religiousAssociationPoints] INT    NULL,
    CONSTRAINT [PK_HumanActivities] PRIMARY KEY CLUSTERED ([HumanId] ASC),
    CONSTRAINT [CK_HumanActivities_ReligiousAssociationPoints] CHECK ([ReligiousAssociationPoints]>=(0)),
    CONSTRAINT [FK_HumanActivities_Humans] FOREIGN KEY ([HumanId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_HumanActivities_Religions] FOREIGN KEY ([ReligionId]) REFERENCES [dbo].[Religions] ([Id])
);



