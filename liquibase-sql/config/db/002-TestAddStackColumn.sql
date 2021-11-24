--liquibase formatted sql

--changeset testuser:1 

ALTER TABLE [dbo].[ErrorLog] ADD [StackTrace] nvarchar(MAX);