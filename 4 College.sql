//CREATE STATEMENTS//

create table Student(
USN varchar(15) primary key,
SName varchar(20),Address varchar(20),hone int(12),
Gender char(1));

create table Semsec(
SSID varchar(21) primary key,
Sem int(10),
Sec varchar(8));

create table Class(
USN varchar(20),
SSID varchar(20),
foreign key(USN) references Student(USN),
foreign key(SSID) references Semsec(SSID));

create table Subject(
Subcode varchar(20) primary key,
Title varchar(20),
Sem int(2),
Credits int(2));

create table Iamarks(
USN varchar(20),
Subcode varchar(20),
SSID varchar(20),
Test1 int(3),
Test2 int(3),
Test3 int(3),
FinalIA int(3),
foreign key(USN) references Student(USN),
foreign key(SSID) references Semsec(SSID),
foreign key(Subcode) references Subject(Subcode));


//INSERT STATEMENTS//

insert into Student values('1','A','XYZ',123,'M');

insert into Semsec values('11',5,'B');

insert into Class values('1','11');

insert into Subject values('911','VV',5,4);

insert into Iamarks values('1','911','11',15,19,18,19);
