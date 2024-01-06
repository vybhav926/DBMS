1)
SELECT COUNT(*) as Above_Average_Grades
FROM Customer 
WHERE Grade > (
SELECT AVG(Grade) 
FROM Customer 
WHERE City = 'Banglore');

2)
SELECT S.Name,COUNT(C.Customer_id) AS CustomerCount 
FROM Salesman S 
JOIN Customer C ON S.Salesman_id = C.Salesman_id 
GROUP BY S.Name
HAVING COUNT(C.Customer_id) > 1;

3)
SELECT S.Name, S.City, 'Customer Exists' as Customer_Status
FROM Salesman S 
WHERE S.Salesman_id IN (
SELECT DISTINCT Salesman_id FROM Customer) 
UNION 
SELECT S.Name, S.City, 'No Customer Exists' as Customer_Status
FROM Salesman S 
WHERE S.Salesman_id NOT IN (
SELECT DISTINCT Salesman_id 
FROM Customer);

4)
CREATE VIEW MaxOrdersSalesman AS 
SELECT Salesman_id, Purchase_Amt 
FROM Product    
WHERE Purchase_Amt= (
SELECT MAX(O.Purchase_Amt) 
FROM Product O   
WHERE O.Ord_Date='2022-12-03');

select * from MaxOrdersSalesman;

5)
DELETE FROM Product WHERE Salesman_id = 1000;
DELETE FROM Customer WHERE Salesman_id = 1000;
DELETE FROM Salesman WHERE Salesman_id = 1000;

6)
CREATE INDEX idx_customer_id ON Customer (Customer_id);

show indexes from Customer;

drop index idx_customer_id on Customer;
