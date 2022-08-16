create database ITFirmDB

use ITFirmDB

--#######################################################################################################################

---------------------------------------------------Special Assignement---------------------------------------------------

--#######################################################################################################################


-- Clients Table

create table tblClients
(
Client_ID int Primary Key,
Cname VARCHAR(40) Not Null,
Address VARCHAR(30),
Email VARCHAR(30) Unique,
Phone bigint,
Business VARCHAR(20) Not Null
)


insert into tblClients values(1001,'ACME Utilities','Noida','contact@acmeutil.com',9567880032,'Manufacturing'),
(1002,'Trackon Consultants','Mumbai','consult@trackon.com',8734210090,'Consultant'),
(1003,'MoneySaver Distributors','Kolkata','save@moneysaver.com',7799886655,'Reseller'),
(1004,'Lawful Corp','Chennai','justice@lawful.com',9210342219,'Professional')



--################################################################################################################

-- Departments Table

create table tbldepartments
(
Deptno int Primary Key,
Dname VARCHAR(15) Not Null,
Loc VARCHAR(20)
)


insert into tbldepartments values(10,'Design','Pune'),
(20,'Development','Pune'),
(30,'Testing','Mumbai'),
(40,'Document','Mumbai')


--################################################################################################################

-- Employees Table :

create table tblEmployees
(
Empno int Primary Key,
Ename VARCHAR(20) Not Null,
Job VARCHAR(15),
Salary int CHECK (salary > 0),
Deptno int FOREIGN KEY REFERENCES tbldepartments(Deptno)
)


insert into tblEmployees values(7001,'Sandeep','Analyst',25000,10),
(7002,'Rajesh','Designer',30000,10),
(7003,'Madhav','Developer',40000,20),
(7004,'Manoj','Developer',40000,20),
(7005,'Abhay','Designer',35000,10),
(7006,'Uma','Tester',30000,30),
(7007,'Gita','Tech. Writer',30000,40),
(7008,'Priya','Tester',35000,30),
(7009,'Nutan','Developer',45000,20),
(7010,'Smita','Analyst',20000,10),
(7011,'Anand','Project Mgr',65000,10)


--################################################################################################################

-- Projects Table : 

create table tblprojects
(
Project_ID int Primary Key,
Descr VARCHAR(30) Not Null,
Start_Date DATE,
Planned_End_Date DATE,
Actual_End_date DATE ,
Budget int CHECK (Budget > 0),
Client_ID int FOREIGN KEY REFERENCES tblClients(Client_ID)
)

alter table tblprojects
ADD CHECK (Actual_End_date > Planned_End_Date)


insert into tblprojects values(401,'Inventory','01-Apr-11','01-Oct-11','31-Oct-11',150000,1001),
(402,'Accounting','01-Aug-11','01-Jan-12',NULL,500000,1002),
(403,'Payroll','01-Oct-11','31-Dec-11',NULL,75000,1003),
(404,'Contact Mgmt','01-Nov-11','31-Dec-11',NULL,50000,1004)


--################################################################################################################

-- EmpProjectTasks Table

create table tblEmpProjectTasks
(
Project_ID int,
Empno int,
Start_Date DATE,
End_Date DATE,
Task VARCHAR(25) Not Null,
Status VARCHAR(15) Not Null,
FOREIGN KEY(Project_ID) REFERENCES tblprojects(Project_ID),
FOREIGN KEY(Empno) REFERENCES tblemployees(Empno),
PRIMARY KEY(Project_ID,Empno)
)

insert into tblEmpProjectTasks values(401,7001,'01-Apr-11','20-Apr-11','System Analysis','Completed'),
(401,7002,'21-Apr-11','30-May-11','System Design','Completed'),
(401,7003,'01-Jun-11','15-Jul-11','Coding','Completed'),
(401,7004,'18-Jul-11','01-Sep-11','Coding','Completed'),
(401,7006,'03-Sep-11','15-Sep-11','Testing','Completed'),
(401,7009,'18-Sep-11','05-Oct-11','Code Change','Completed'),
(401,7008,'06-Oct-11','16-Oct-11','Testing','Completed'),
(401,7007,'06-Oct-11','22-Oct-11','Documentation','Completed'),
(401,7011,'22-Oct-11','31-Oct-11','Sign off','Completed'),
(402,7010,'01-Aug-11','20-Aug-11','System Analysis','Completed'),
(402,7002,'22-Aug-11','30-Sep-11','System Design','Completed'),
(402,7004,'01-Oct-11',NULL,'Coding','In Progress')


--################################################################################################################

select * from tblClients
select * from tbldepartments
select * from tblEmployees
select * from tblprojects
select * from tblEmpProjectTasks

--################################################################################################################

