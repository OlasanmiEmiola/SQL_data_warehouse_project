/*
===============================================================
Create Database and Schemas 
===============================================================

Script Purpose: 
	This script create a new database name 'DataWarehouse' after checking if it alraedy exists. 
	if the database exists, it us dropped and recreated. Addditionally, the script sets up three schemas
	within the database: 'bronze', 'silver', and 'gold'. 

*/

USE master; 
GO 

--Drop and recreate the 'DataWareHouse' Database 
IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
	DROP DATABASE DataWarehouse; 
END; 
GO 

--create the 'Datawarehouse' database 
CREATE DATABASE DataWarehouse; 
GO 

Use DataWarehouse; 
GO

--Create Schemas 
CREATE SCHEMA bronze; 
GO

CREATE SCHEMA silver; 
GO 

CREATE SCHEMA gold; 
GO
