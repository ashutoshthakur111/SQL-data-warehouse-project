/* 
========================================================
Create database and schemas
========================================================
Script purpose:
    This script creates a new database named 'Datawarehouse' after checking if it already exists.
    if the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.
WARNING:
    RUNNING THIS SCRIPT WILL DROP THE ENTIRE 'Datawarehouse' DATABASE IF IT EXISTS.
    ALL DATA IN THE DATABASE WILL BE PERMANENTLY DELETED. PROCEED WITH CAUTION 
    AND ENSURE YOU HAVE PROPER BACKUPS BEFORE RUNNING THE SCRIPT.
*/


USE master;
GO

--Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--Create the 'Datawarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE Datawarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold; 
GO
