1)
SELECT DISTINCT P.Pno
FROM Project P 
JOIN Works_on W ON P.Pno = W.Pno 
JOIN Employee E ON W.SSN = E.SSN 
WHERE E.Name LIKE '%Scott';

2)
SELECT E.Name, P.Pname, E.Salary, E.Salary * 1.1 AS NewSalary
FROM Employee E 
JOIN Works_on W ON E.SSN = W.SSN 
JOIN Project P ON W.Pno = P.Pno 
WHERE P.Pname = 'IOT';

3)
SELECT SUM(E.Salary) AS TotalSalaries, MAX(E.Salary) AS MaxSalary,MIN(E.Salary) AS MinSalary,AVG(E.Salary) AS AvgSalary 
FROM Employee E 
join Department D on E.Dno=D.Dno  
WHERE Dname = 'Accounts';

4)
SELECT E.Name, E.Dno, D.Dname FROM Employee E 
JOIN Department D ON E.Dno = D.Dno 
WHERE NOT EXISTS (
SELECT P.Pno FROM Project P     
WHERE P.Dno = E.Dno     
EXCEPT    
SELECT W.Pno FROM Works_on W 
WHERE W.SSN = E.SSN );

5)
SELECT Dno, COUNT(SSN) AS Number_of_Employees
FROM Employee E1 WHERE Salary > 600000 
AND NOT EXISTS (
SELECT 1 FROM Employee E2 
WHERE E2.Dno = E1.Dno AND E2.Salary <= 600000
HAVING COUNT(E2.SSN) > 5) 
GROUP BY Dno;
