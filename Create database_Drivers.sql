--Створення бази даних
USE master;
GO
CREATE DATABASE Drivers
ON
(NAME = Drivers_Dat,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DriversDat.mdf',
	SIZE = 10,
	MAXSIZE = 300,
	FILEGROWTH = 5
)
LOG ON
(NAME = Drivers_Log,
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DriversLog.ldf',
	SIZE = 5,
	MAXSIZE = 170,
	FILEGROWTH = 5);
GO
