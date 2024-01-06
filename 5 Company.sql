//CREATE STATEMENT//

create table Department(
Dno int(10) primary key,
Dname varchar(10),
Mgrssn int(10),
Mgrstartdate date);

create table Employee( 
SSN int(10) primary key, 
Name varchar(10), 
Address varchar(20), 
Sex varchar(15), 
Salary int(20), 
Superssn int(10), 
Dno int(10), 
foreign key(Superssn) references Employee(SSN), 
foreign key(Dno) references Department(Dno));

--Alter table Add foreign key to Mgrssn in the Department table and refer to Employee SSN Attribute

ALTER TABLE Department ADD foreign key(Mgrssn) references Employee(SSN);

create table Dlocation(
Dno int(10),
Dloc varchar(10),
foreign key(Dno) references Department(Dno),
primary key(Dno,Dloc));

create table Project(
Pno int(10) primary key,
Pname varchar(10),
Ploc varchar(20),
Dno int(10),
foreign key(Dno) references Department(Dno));

create table Works_on(
SSN int(10), 
Pno int(10), 
Hours time, 
foreign key(SSN) references Employee(SSN), 
foreign key(Pno) references Project(Pno), 
primary key(SSN,Pno));


//INSERT STATEMENT//

insert into Employee (SSN,Name,Address,Sex,Salary) values(1,'John Scoot','XYZ','M',75000);

insert into Department values(911,'Accounts',1,'2020-01-17');

--Update the table to add Superssn and Dno for relation Employee

update Employee set Superssn='1' ,Dno='911' where SSN='2';


insert into Project values(2201,'IOT','XYZ',911);

insert into Dlocation values(911,'ABC');

insert into Works_on values(1,2201,'08:30:00');
