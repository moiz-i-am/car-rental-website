CREATE TABLE [dbo].[Booking] (
    [Id]         INT          NOT NULL,
    [CUSTOMERID] INT          NOT NULL,
    [CARID]      INT          NOT NULL,
    [RENTDATE]   VARCHAR (50) NOT NULL,
    [RETURNDATE] VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

