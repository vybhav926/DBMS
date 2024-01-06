1)
select Mov_title from Movies 
where Dir_id=(
select Dir_id from Director 
where Dir_Name="Hitchcock");

2)
select Mov_title from Movies 
where Mov_id in( 
select Mov_id from Movies_cast  
group by Mov_id  
having count(*)>=2);

3)
SELECT A.Act_name 
FROM Actor A 
JOIN Movies_cast MC ON A.Act_id = MC.Act_id 
JOIN Movies M ON MC.Mov_id = M.Mov_id 
GROUP BY A.Act_name 
HAVING COUNT(DISTINCT CASE WHEN M.Mov_year > '2020-01-01' THEN M.Mov_id END) > 0 AND COUNT(DISTINCT CASE WHEN M.Mov_year < '2002-10-01' THEN M.Mov_id END) > 0;

4)
SELECT M.Mov_title, R.Rev_stars 
FROM Movies M 
JOIN Rating R ON M.Mov_id = R.Mov_id 
WHERE R.Rev_stars IS NOT NULL                            --   ( else use >=1 )  --
ORDER BY M.Mov_title;

5)
update Rating
set Rev_stars=5 
where Mov_id in(
select Mov_id 
from Movies  
where Dir_id=(
select Dir_id  
from Director  
where Dir_Name="Spidberg"));
