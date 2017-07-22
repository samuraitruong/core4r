CREATE TABLE [dbo].[Post]
(
	[PostId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Title] NVARCHAR(200) NOT NULL,
	[Content] ntext NOT NULL,
	[UniqueAlias] NVARCHAR(200) NOT NULL,
	[ReplyToPostId] INT NULL, 
	[TopicId] INT NOT NULL,
	[ImageUrl] NVARCHAR(250) NULL,
    [CreatedDate] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    [CreatedByUserId] INT NOT NULL, 
    [LastModifiedDate] DATETIME NULL DEFAULT GETUTCDATE(), 
    [LastModifiedUserID] INT NULL, 
    [IsVisible] BIT NOT NULL DEFAULT 1,
	[PostStatusId] INT NOT NULL,
)

GO

CREATE INDEX [IX_Channel_ParentChannelID] ON [dbo].[Channel] ([ParentChannelID])
