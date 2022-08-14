create database ScenarioDB

use ScenarioDB

--#######################################################################################################################

------------------------------------------------Scenario Based Assignement------------------------------------------------

--#######################################################################################################################

-- 1.

create table tblBook
(
id int primary key,
title varchar(30),
author varchar(30),
isbn varchar(30) unique,
published_date datetime
)

insert into tblBook values(1,'My First SQL book','Mary Parker','981483029127','2012-02-22 12:08:17'),
(2,'My Second SQL book','John Mayer','857300923713','1972-07-03 09:22:45'),
(3,'My Third SQL book','Cary Flint','523120967812','2015-10-18 14:05:44')

select * from tblBook where author like '%er'

--#######################################################################################################################

-- 2. 

create table tblReview
(
id int primary key,
book_id int,
reviewer_name varchar(30),
content varchar(30),
rating int,
published_date datetime
)

insert into tblReview values(1,1,'John Smith','My first Review',4,'2017-12-10 05:50:11'),
(2,2,'John Smith','My Second Review',5,'2017-10-13 15:05:12'),
(3,2,'Alice Walker','Another Review',1,'2017-10-22 23:47:10')

select title,author,coalesce(reviewer_name,'Not reviewed') as reviewer_name
from tblBook b left outer join tblReview r
on b.id = r.book_id 

--#######################################################################################################################

-- 3.

select reviewer_name as 'Reviewer who reviewed more than one book' from tblReview
group by reviewer_name
having count(distinct(book_id))>1

--#######################################################################################################################

-- 4.

create table tblcustomer
(
id int primary key,
name varchar(20),
age int,
address varchar(30),
salary float
)

insert into tblcustomer values(1,'Ramesh',32,'Ahmedabad',2000.00),
(2,'Khilan',25,'Delhi',1500.00),
(3,'Kaushik',23,'Kota',2000.00),
(4,'Chaitali',25,'Mumbai',6500.00),
(5,'Hardik',27,'Bhopal',8500.00),
(6,'Komal',22,'MP',4500.00),
(7,'Muffy',24,'Indore',10000.00)


select name from tblcustomer where address like '%o%'

--#######################################################################################################################

-- 5.

create table tblOrders
(
OID int primary key,
DATE datetime,
customer_ID int,
Amount int
)

insert into tblOrders values(102,'2009-10-08 00:00:00',3,3000),
(100,'2009-10-08 00:00:00',3,1500),
(101,'2009-11-20 00:00:00',2,1560),
(103,'2009-05-20 00:00:00',4,2060)


select o1.DATE,count(distinct(o2.customer_ID)) as 'Total Number of Customers' from tblOrders o1 join tblOrders o2
on o1.OID = o2.OID
group by o1.DATE

--#######################################################################################################################

-- 6.

create table tblEmployee
(
id int primary key,
name varchar(20),
age int,
address varchar(30),
salary float
)

insert into tblEmployee values(1,'Ramesh',32,'Ahmedabad',2000.00),
(2,'Khilan',25,'Delhi',1500.00),
(3,'Kaushik',23,'Kota',2000.00),
(4,'Chaitali',25,'Mumbai',6500.00),
(5,'Hardik',27,'Bhopal',8500.00),
(6,'Komal',22,'MP',Null),
(7,'Muffy',24,'Indore',Null)


select lower(name) as 'Employee Name' from tblEmployee where salary is null


--#######################################################################################################################

-- 7.

create table tblStudent_Details
(
RegisterNo int primary key,
Name varchar(30),
Age int,
Qualification varchar(30),
MobileNo varchar(15),
Mail_id varchar(30),
Location varchar(30),
Gender char
)

insert into tblStudent_Details values(2,'Sai',22,'B.E','99528367777','Sai@gmail.com','Chennai','M'),
(3,'Kumar',20,'BSC','7890125648','Kumar@gmail.com','Madurai','M'),
(4,'Selvi',22,'B.Tech','8904567342','selvi@gmail.com','Selam','F'),
(5,'Nisha',25,'M.E','7834672319','Nisha@gmail.com','Theni','F'),
(6,'SaiSaran',21,'B.A','7890345678','saran@gmail.com','Madurai','F'),
(7,'Tom',23,'BCA','8901234675','tom@gmail.com','Pune','M')


select Gender, count(*) as 'No. of Students' from tblStudent_Details
group by Gender

--#######################################################################################################################

-- 8.

create table tblCourseDetails
(
C_id varchar(20) primary key,
C_Name varchar(30),
Start_date date,
End_date date,
Fee int
)

insert into tblCourseDetails values('DN003','DotNet','2018-02-01','2018-02-28',15000),
('DV003','DataVisualization','2018-03-01','2018-04-15',15000),
('JA002','AdvancedJava','2018-01-02','2018-01-20',10000),
('JC001','CoreJava','2018-01-02','2018-01-12',3000)

create table tblCourseRegistration
(
RegisterNO int,
Cid varchar(15),
Batch varchar(15)
)

insert into tblCourseRegistration values(2,'DN003','FN'),
(3,'DV003','AN'),(4,'JA002','FN'),(2,'JA002','AN'),(5,'JC001','FN')


select C_Name, count(*) as 'Number of Registered Students' from tblCourseDetails d join tblCourseRegistration r
on d.C_id = r.Cid
where Start_date = '2018-01-02' and End_date = '2018-02-28'   
group by C_Name,Cid
order by Cid desc

--#######################################################################################################################

-- 9.

create table Customers
(
customer_id int primary key,
first_name varchar(30),
last_name varchar(30)
)

insert into Customers values(1,'George','Washington'),
(2,'John','Adams'),
(3,'Thomas','Jefferson'),
(4,'James','Madison'),
(5,'James','Monroe')

create table Orders
(
order_id int primary key,
order_date date,
amount float,
customer_id int
)

insert into Orders values(1,'07/04/1776',234.56,1),
(2,'03/14/1760',78.50,3),
(3,'05/23/1784',124.00,2),
(4,'09/03/1790',65.50,3),
(5,'07/21/1795',25.50,10),
(6,'11/27/1787',14.40,9)


select first_name,last_name from Customers c join Orders o
on c.customer_id = o.customer_id
group by o.customer_id,first_name,last_name
having count(o.customer_id)=2

--#######################################################################################################################

-- 10.

select reverse(Name) as 'Names in Reverse Order',upper(Location) as 'Location' from tblStudent_Details

--#######################################################################################################################

-- 11.

create table Orderr
(
Id int Primary Key,
OrderDate date,
OrderNumber int,
CustomerId int,
TotalAmount int
)

create table OrderItem
(
Id int primary key,
OrderId int,
ProductId int,
UnitPrice int,
Quantity int
)

create table Product
(
Id int primary key,
ProductName varchar(20),
SupplierId int,
UnitPrice int,
Package varchar(20),
IsDiscontinued varchar(20)
)



create view vwOrder
as 
select p.ProductName,i.Quantity,o.OrderNumber from Orderr o
join OrderItem i on o.Id = i.Id
join Product p on o.Id = p.Id

select * from vwOrder


--#######################################################################################################################

-- 12.

select C_Name as 'Course Registered by Nisha' from tblStudent_Details sd
join tblCourseRegistration cr on sd.RegisterNo = cr.RegisterNO
join tblCourseDetails cd on cd.C_id = cr.Cid
where sd.Name = 'Nisha'

--#######################################################################################################################
