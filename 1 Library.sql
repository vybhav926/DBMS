//CREATE STATEMENT//

create table Publisher(
Name varchar(20) primary key,
Phone_no int(12),
Address varchar(20));

create table Book(
Book_id int(20) primary key,
Title varchar(20),
Pub_year date,
Pub_name varchar(20),
foreign key(Pub_name) references Publisher(Name));

create table Book_authors(
Book_id int(12),
Author_name varchar(20),
foreign key(Book_id) references Book(Book_id));

create table Library_branch(
Branch_id int(12) primary key,
Address varchar(20),
Branch_name varchar(20));

create table Book_Lending(
Book_id int(12),
Branch_id int(12),
Card_no int(20),
Date_out date,
Due_date date,
foreign key(Branch_id) references Library_branch(Branch_id),
foreign key(Book_id) references Book(Book_id));

create table Book_Copies(
Book_id int(12),
Branch_id int(12),
No_of_copies int(20),
foreign key(Branch_id) references Library_branch(Branch_id),
foreign key(Book_id) references Book(Book_id));


//INSERT STATEMENT//

insert into Publisher values('A',123,'XYZ');

insert into Book values(1,'RR','2020-06-17','A');

insert into Book_authors values(1,'X');

insert into Library_branch values(11,'X','KL');

insert into Book_Lending values(1,11,911,'2020-07-01','2022-02-01');

insert into Book_Copies values(1,11,91);


