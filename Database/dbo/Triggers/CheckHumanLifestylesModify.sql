CREATE TRIGGER [CheckHumanLifestylesModify]
ON [dbo].[HumanLifestyles]
FOR INSERT, UPDATE
AS 
    IF (
        EXISTS(
            SELECT
                *
            FROM
                [inserted]
            JOIN [Humans]
                ON [Humans].[Id] = [inserted].[HumanId]
            WHERE
                [Humans].[Age] < 16
        )
    )
    BEGIN
        RAISERROR ('Baby cannot have a lifestyle', 16, 1);  
        ROLLBACK TRANSACTION;
        RETURN;
    END;
