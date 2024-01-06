// CREATE STATEMENT //

create table Actor(
Act_id int(10) primary key,
Act_name varchar(20),
Act_gender varchar(15));

create table Director(Dir_id int(10) primary key,
Dir_Name varchar(20),
Dir_phone int(15));

create table Movies(
Mov_id int(10) primary key,
Mov_title varchar(20),
Mov_year date,
Mov_lang varchar(20),
Dir_id int(25),
foreign key(Dir_id) references Director(Dir_id));

create table Movies_cast(
Mov_id int(10),
Act_id int(20),
Role varchar(15),
foreign key(Mov_id)references Movies(Mov_id),
foreign key(Act_id) references Actor(Act_id));

create table Rating(
Mov_id int(10),
Rev_stars int(15),
foreign key(Mov_id)references Movies(Mov_id));


// INSERT STATEMENT //

insert into Actor values(1,'H','M');

insert into Director values(11,'X',456);

insert into Movies values(111,'XYZ','1999-12-09','SPAN',11);

insert into Movies_cast values(111,1,'X');

insert into Rating values(111,5);








