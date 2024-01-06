1) 
SELECT S.* 
FROM Student S 
JOIN Class C ON S.USN = C.USN 
JOIN Semsec SS ON C.SSID = SS.SSID 
WHERE SS.Sem = 5 AND SS.Sec = 'B';

2) 
SELECT SS.Sem, SS.Sec, S.Gender, COUNT(*) as StudentCount 
FROM Student S 
JOIN Class C ON S.USN = C.USN 
JOIN Semsec SS ON C.SSID = SS.SSID 
GROUP BY SS.Sem, SS.Sec, S.Gender;

3) 
CREATE VIEW Event1Marks AS 
SELECT USN, Subcode, Test1 
FROM Iamarks WHERE USN LIKE '01JST__IS%';

4)
UPDATE Iamarks SET Finalia = (Test1 + Test2 + Test3 - LEAST( Test1, Test2, Test3))/2;

5) 
SELECT S.SName, SS.Sem, SS.Sec, S.USN,
CASE 
WHEN IA.Finalia BETWEEN 17 AND 20 THEN 'Outstanding' 
WHEN IA.Finalia BETWEEN 12 AND 16 THEN 'Average' 
WHEN IA.Finalia < 12 THEN 'Weak' 
ELSE 'Unknown' 
END AS CAT 
FROM Student S 
JOIN Class C ON S.USN = C.USN
JOIN Semsec SS ON C.SSID = SS.SSID 
JOIN Iamarks IA ON S.USN = IA.USN 
WHERE SS.Sem = 8 AND SS.Sec IN ('A', 'B', 'C');
