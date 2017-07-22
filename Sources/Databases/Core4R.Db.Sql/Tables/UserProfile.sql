/*
The database must have a MEMORY_OPTIMIZED_DATA filegroup
before the memory optimized object can be created.

The bucket count should be set to about two times the 
maximum expected number of distinct values in the 
index key, rounded up to the nearest power of two.
*/

CREATE TABLE [dbo].[UserProfile]
(
	[UserId] INT NOT NULL PRIMARY KEY,-- NONCLUSTERED HASH WITH (BUCKET_COUNT = 131072), 
    [Firstname] NVARCHAR(50) NULL, 
    [Lastname] NVARCHAR(50) NULL, 
    [CreatedDate] DATETIME NOT NULL, 
    [LastModifiedDate] DATETIME NOT NULL, 
    [FacebookId] NVARCHAR(50) NULL, 
    [StatusId] INT NULL, 
    CONSTRAINT [FK_UserProfile_UserID] FOREIGN KEY (UserID) REFERENCES [User]([UserID]),
	CONSTRAINT [FK_UserProfile_UserStatusID]
	FOREIGN KEY (StatusId)
	REFERENCES UserStatus (StatusId)

) --WITH (MEMORY_OPTIMIZED = ON)