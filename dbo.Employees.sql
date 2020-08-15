CREATE TABLE [dbo].[Employees] (
    [Id]    INT IDENTITY(1,1)	NOT NULL,
    [Days]  DATE	NOT NULL,
    [Shop]  NVARCHAR (200)	NOT NULL,
    [Thing] NVARCHAR (200)	NOT NULL,
    [Price] INT	NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

