CREATE TABLE [dbo].[Channel]
(
	[ChannelId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Name] NVARCHAR(200) NOT NULL,
	[Description] NVARCHAR(4000) NOT NULL,
	[UniqueAlias] NVARCHAR(200) NOT NULL,
	[ParentChannelID] INT NULL, 
	[ImageUrl] NVARCHAR(250) NULL,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    [CreatedByUserId] INT NOT NULL, 
    [LastModifiedDate] DATETIME NULL DEFAULT GETUTCDATE(), 
    [LastModifiedUserID] INT NULL, 
    [IsVisible] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_Channel_Channel] FOREIGN KEY ([ParentChannelID]) REFERENCES [Channel]([ParentChannelID]),
	CONSTRAINT [FK_Channel_User_CreatedByUserId] FOREIGN KEY ([CreatedByUserId]) REFERENCES [User]([UserId]),
	CONSTRAINT [FK_Channel_User_LastModifiedUserID] FOREIGN KEY ([LastModifiedUserID]) REFERENCES [User]([UserId])
)

GO

CREATE INDEX [IX_Channel_ParentChannelID] ON [dbo].[Channel] ([ParentChannelID])
