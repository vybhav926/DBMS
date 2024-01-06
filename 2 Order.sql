//CREATE STATEMENT//

create table Salesman
(Salesman_id int(10) primary key,
Name varchar(20),
City varchar(20),
Commission float(10));

create table Customer(
Customer_id int(10) primary key,
Cust_name varchar(20),
City varchar(20),
Grade int(9),
Salesman_id int(10),
foreign key(Salesman_id) references Salesman(salesman_id));

create table Product(Ord_no int(10) primary key,
Purchase_amt float(10),
Ord_date date,
Customer_id int(10),
Salesman_id int(10),
foreign key(Salesman_id) references Salesman(salesman_id),
foreign key(Customer_id) references Customer(Customer_id));


//INSERT STATEMENT//

insert into Salesman values(1,'A','Banglore',1000.23);

insert into Customer values(11,'X','Banglore',5,1);

insert into Product values(911,5000.02,'2022-12-03',11,1);






