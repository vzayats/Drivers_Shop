--��������� ������� ��䳿
USE Drivers;
GO
CREATE TABLE Drivers
	(DriverNumber int PRIMARY KEY NOT NULL,
	FullName nvarchar(150) NOT NULL,
	DateOfBirth date NULL)
GO

--��������� ������� (������ �����)
CREATE TABLE Stores
	(Id_Stores int PRIMARY KEY IDENTITY(1,1) NOT NULL ,
	NameStores nvarchar(150) NOT NULL,
	Addresses nvarchar(150) NOT NULL)
GO

--��������� ������� �������� �����
CREATE TABLE RouteLists
	(Id_RouteLists int PRIMARY KEY IDENTITY(1,1),
	DateOfDeparture date NULL,
	DateOfArrival date NULL,
	DriverNumber int NOT NULL,
	Id_Stores int NOT NULL,
	--��'���� �� ���������
	CONSTRAINT Fk_Drivers FOREIGN KEY (DriverNumber)
	REFERENCES Drivers(DriverNumber),
	CONSTRAINT Fk_Stores FOREIGN KEY (Id_Stores)
	REFERENCES Stores(Id_Stores))
GO