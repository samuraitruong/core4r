CREATE TABLE [dbo].[Attachment]
(
	[AttachmentId] INT NOT NULL, 
    [FileName] NVARCHAR(255) NOT NULL, 
    [FileType] NVARCHAR(50) NOT NULL, 
    [Size] INT NOT NULL DEFAULT 0, 
    [PostId] INT NULL, 
    [CreatedDate] DATETIME NOT NULL DEFAULT GETUTCDATE(), 
    [UserId] INT NOT NULL, 
    [DownloadCount] INT NOT NULL DEFAULT 0,
	CONSTRAINT [PK_Attachment] PRIMARY KEY (AttachmentId),
    CONSTRAINT [FK_Attachment_Post] FOREIGN KEY ([PostID]) REFERENCES [Post]([PostID]),
	CONSTRAINT [FK_Attachment_User] FOREIGN KEY ([UserId]) REFERENCES [User]([UserId])
)

GO

CREATE NONCLUSTERED INDEX [IX_Attachment_PostId] ON [dbo].[Attachment] ([PostID], [UserId]) INCLUDE(AttachmentID)
