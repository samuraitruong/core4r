CREATE TABLE [dbo].[UserToken]
(
	[TokenId] INT NOT NULL PRIMARY KEY, 
    [Token] NVARCHAR(40) NOT NULL, 
    [TokenTypeId] INT NOT NULL, 
    [UserId] INT NOT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    [ExpiredDate] DATETIME NULL, 
    CONSTRAINT [FK_UserToken_TokenType] FOREIGN KEY ([TokenTypeId]) REFERENCES [TokenType]([TokenTypeId]), 
    CONSTRAINT [FK_UserToken_User] FOREIGN KEY ([UserID]) REFERENCES [User]([UserID])
)

GO

CREATE NONCLUSTERED INDEX [IX_UserToken_All] ON [dbo].[UserToken] ([Token], UserID) INCLUDE(TokenTypeId, CreatedDate, ExpiredDate)

GO

CREATE NONCLUSTERED INDEX [IX_UserToken_UserId] ON [dbo].[UserToken] ([UserID])
