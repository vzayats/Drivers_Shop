--Task 1: ��� ������ � ��������������� ������ � ������� ��, � ������� ���� ������ ����� 
DELETE FROM dbo.[RouteLists] 
WHERE Id_RouteLists IN 
(SELECT DISTINCT rl1.Id_RouteLists FROM dbo.[RouteLists] AS rl1, dbo.[RouteLists] AS rl2
WHERE rl1.DriverNumber = rl2.DriverNumber 
AND ((rl1.DateOfDeparture > rl2.DateOfDeparture
AND rl1.DateOfArrival > rl2.DateOfArrival)
OR((rl1.DateOfDeparture > rl2.DateOfDeparture))))