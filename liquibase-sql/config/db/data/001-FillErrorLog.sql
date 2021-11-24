--liquibase formatted sql

--changeset testuser:1 

INSERT [dbo].[ErrorLog]([UserName], [ErrorMessage], [StackTrace])
VALUES
('testuser','error', 'stack trace');