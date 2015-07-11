USE Drivers;
GO

CREATE TRIGGER Check_RouteList_Dates on dbo.RouteLists
FOR INSERT, UPDATE AS
IF EXISTS 
	(SELECT DISTINCT rl1.Id_RouteLists 
	FROM dbo.[RouteLists] AS rl1, dbo.[RouteLists] AS rl2
	WHERE rl1.DriverNumber = rl2.DriverNumber 
	AND ((rl1.DateOfDeparture > rl2.DateOfDeparture
	AND rl1.DateOfArrival < rl2.DateOfArrival)
	OR((rl1.DateOfDeparture > rl2.DateOfDeparture))))
BEGIN
RAISERROR ('Incorrect date for insert', 16, 1)
END;

ELSE 
INSERT INTO dbo.RouteLists ([DateOfDeparture],[DateOfArrival],[DriverNumber],[Id_Stores])
VALUES ('2015/08/10', '2015/08/15', 5, 7),
	   ('2015/08/11', '2015/08/13', 5, 7);
SELECT [DateOfDeparture],[DateOfArrival],[DriverNumber],[Id_Stores] FROM dbo.RouteLists
GO;