CREATE TABLE [dbo].[Workflow]
(
	[WorkflowId] INT NOT NULL ,
	[WorkflowName] NVARCHAR(200),
	[Description] nvarchar(4000),
	CONSTRAINT [FK_Workflow] PRIMARY KEY (WorkflowId)
)
