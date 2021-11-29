CREATE TABLE [dbo].[Marriages] (
    [HusbandId] BIGINT NOT NULL,
    [WifeId]    BIGINT NOT NULL,
    CONSTRAINT [PK_Marriages] PRIMARY KEY CLUSTERED ([HusbandId] ASC, [WifeId] ASC),
    CONSTRAINT [FK_Marriages_Humans] FOREIGN KEY ([HusbandId]) REFERENCES [dbo].[Humans] ([Id]),
    CONSTRAINT [FK_Marriages_Humans_02] FOREIGN KEY ([WifeId]) REFERENCES [dbo].[Humans] ([Id])
);

