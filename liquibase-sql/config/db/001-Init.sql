--liquibase formatted sql

--changeset testuser:1 

CREATE TABLE [dbo].[ErrorLog] (
[ErrorID] [int] IDENTITY(1,1) NOT NULL,
[ErrorTime] [datetime] NOT NULL DEFAULT GETDATE(),
[UserName] [sysname] NOT NULL,
[ErrorSeverity] [tinyint] NULL,
[ErrorMessage] [nvarchar](2000) NOT NULL
)

--changeset testuser:2 

ALTER TABLE [dbo].[ErrorLog] ADD CONSTRAINT [PK_ErrorID] PRIMARY KEY CLUSTERED (ErrorID)