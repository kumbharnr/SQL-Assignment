create database assignment;

use assignment;

create table Products(ProductID int Auto_increment primary key,ProductName varchar(100),cost int);

insert into Products values(101,"Notebook",100);
insert into Products values(102,"Notebook",19);
insert into Products values(103,"mouse",200);
insert into Products values(104,"Pen",10);
insert into Products values(105,"Notebook",200);

select *from Products;

select *from Products where cost>=100;

UPDATE Products SET ProductName="VIVO" WHERE ProductName="Notebook";


select max(cost) as MAXCOST from Products;

select max(cost) from Products where (select * from Products limit 2);

select MIN(cost) from Products order by ProductName;

alter table Products add Rating int;


create table Customers(CustomerID int primary key,CustName varchar(200),Address varchar(30),City varchar(30),PostCode int,Country varchar(50));
insert into Customers values(101,'charan','abcd','bengalore',413211,'india');
insert into Customers values(102,'Navnath','swarget','pune',411048,'india');
insert into Customers values(105,'varun','high tech city','hyd',415211,'US');
insert into Customers values(103,'dhanashri','ichalkarnji','Kolhapur',413099,'india');
insert into Customers values(104,'raj','hadpsar','pune',411010,'USA');

select *from Customers;

select distinct City from Customers;

select distinct City as OurCity,count(City) as countofcity from Customers group by city;

select CustomerID,CustName,City from Customers where CustomerID IN (select ProductID from Products );

 select CustName,Country from Customers where Country ='india';
 
 select CustName from Customers order by CustName;
 
 select CustName,Country from Customers order by CustName ASC,Country DESC;

insert into Customers(CustomerID,CustName,Address,City,PostCode,Country) values(108,'Tejas','hadapsar','pune',411010,'China');
insert into Customers(CustomerID,CustName,Address,City,Country) values(109,'Tejas','hadapsar','pune','China');
insert into Customers(CustomerID,CustName,Address,City,Country) values(107,'Tejas','hadapsar','pune','China');
insert into Customers(CustomerID,CustName,Address,City,Country) values(106,'Tejas','hadapsar','pune','China');

select *from Customers where PostCode=NULL;

select *from Customers where PostCode !='NULL';

delete from Customers where CustomerID=109;
-- 18 is pending is delete all Customer record

alter table Customers RENAME column PostCode to PinCode;

delete from Customers;
rollback;



