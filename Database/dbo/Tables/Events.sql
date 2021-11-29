CREATE TABLE [dbo].[Events] (
    [Guid]        UNIQUEIDENTIFIER NOT NULL,
    [EventTypeId] INT              NOT NULL,
    [Target]      BIGINT           NOT NULL,
    CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED ([Guid] ASC),
    CONSTRAINT [FK_Events_EventTypes] FOREIGN KEY ([EventTypeId]) REFERENCES [dbo].[EventTypes] ([Id]),
    CONSTRAINT [FK_Events_Humans] FOREIGN KEY ([Target]) REFERENCES [dbo].[Humans] ([Id])
);

