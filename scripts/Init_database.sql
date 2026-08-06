/*
=======================================================================================
Create Database and schemas
=======================================================================================
Script Purpose : 
	This script creates a new database "DataWarehouse" after checking if its already exists.
	If it does, it is dropped and recreated.
	The script also sets up 3 schemas within the database : Bronze , Silver, Gold

WARNING : 
	Running This script will drop the entire "DataWarehouse" database if it exists.
	Ensure you have backups before running this script.
*/

USE master;
GO

-- Drop and Recreate the DataWarehouse database
IF EXISTS ( SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse' )
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the DataWarehouse database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schema
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO