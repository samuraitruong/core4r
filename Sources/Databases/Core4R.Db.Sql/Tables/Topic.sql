CREATE TABLE [dbo].[Topic]
(
	[TopicId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[PrimaryPostId] INT NULL,
	[ChannelID]  INT NOT NULL,
	[ViewCount] INT NOT NULL DEFAULT 0,
	[IsPin] BIT DEFAULT 0, 
    CONSTRAINT [FK_Topic_Post] FOREIGN KEY ([PrimaryPostId]) REFERENCES [Post](PostId)
)
