1)
SELECT L.Branch_name,B.Book_id, B.Title, B.Pub_name, BA.Author_name,BC.No_of_Copies  
FROM Book B  
JOIN Book_authors BA ON B.Book_id = BA.Book_id  
JOIN Book_Copies BC ON B.Book_id = BC.Book_id 
JOIN Library_branch L ON BC.Branch_id = L.Branch_id;

2)
SELECT BL.Card_no, COUNT(BL.Book_id) AS Books_Borrowed 
FROM Book_Lending BL 
WHERE BL.Date_out BETWEEN '2017-01-01' AND '2023-06-30' 
GROUP BY BL.Card_no 
HAVING COUNT(*) > 3;

3)
DELETE FROM Book_Lending
WHERE Book_id = '123';

DELETE FROM Book_Copies
WHERE Book_id = '123';

DELETE FROM Book_authors
WHERE Book_id = '123';

DELETE FROM Book
WHERE Book_id = '123';

4)
CREATE VIEW BOOK_BY_YEAR AS 
select Book_id, Title, Pub_year, Pub_name 
from Book order by Pub_year;

SELECT * FROM BOOK_BY_YEAR
WHERE Pub_Year = '2020-06-17';

5)
CREATE VIEW AVAILABLE_BOOK_COPIES AS 
SELECT L.Branch_name,B.Book_id, B.Title, BC.No_of_copies
FROM Book B 
JOIN Book_Copies BC ON B.Book_id = BC.Book_id
JOIN Library_branch L ON BC.Branch_id = L.Branch_id;;

6)
select * from AVAILABLE_BOOK_COPIES 
where No_of_Copies>20;
