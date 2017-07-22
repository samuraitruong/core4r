CREATE TABLE [dbo].[User]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Username] NVARCHAR(50) NOT NULL, 
    [Email] NVARCHAR(250) NOT NULL, 
    [Salt] UNIQUEIDENTIFIER NOT NULL, 
    [Password] NVARCHAR(40) NOT NULL
)

GO

CREATE INDEX [IX_User_Username] ON [dbo].[User] (Username)
