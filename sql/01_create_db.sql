-- =============================================
-- SAPB1_Lite - 01_create_db.sql
-- Cria o banco SAPB1_Lite
-- =============================================
USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'SAPB1_Lite')
BEGIN
    ALTER DATABASE SAPB1_Lite SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE SAPB1_Lite;
END
GO

CREATE DATABASE SAPB1_Lite;
GO

USE SAPB1_Lite;
GO

PRINT 'Banco SAPB1_Lite criado com sucesso!';
GO
