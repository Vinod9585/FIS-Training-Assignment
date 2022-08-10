create database CompanyDB

use CompanyDB

create table tblDept
(
	deptno int primary key,
	dname varchar(30),
	loc varchar(30)
)

create table tblEmp
(
	empno int primary key,
	ename varchar(30),
	job varchar(30) not null,
	mgr_id int,
	hiredate date,
	sal int not null,
	comm int,
	deptno int references tblDept(deptno)
)


insert into tblDept values(10,'Accounting','New York'),(20,'Research','Dallas'),
(30,'Sales','Chicago'),(40,'Operations','Boston')

select * from tblDept

select * from tblEmp


insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7369, 'SMITH', 'CLERK', 7902, '17-DEC-80', 800 ,20)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,comm,deptno) values(7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-81', 1600, 300, 30)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,comm,deptno) values(7521, 'WARD', 'SALESMAN', 7698, '22-FEB-81', 1250, 500, 30)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7566, 'JONES', 'MANAGER', 7839, '02-APR-81', 2975, 20)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,comm,deptno) values(7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-81', 1250, 1400, 30)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7698, 'BLAKE', 'MANAGER', 7839, '01-MAY-81', 2850, 30)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7782, 'CLARK', 'MANAGER', 7839, '09-JUN-81', 2450, 10)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7788, 'SCOTT', 'ANALYST', 7566, '19-APR-87', 3000, 20)
insert into tblEmp(empno,ename,job,hiredate,sal,deptno) values(7839, 'KING', 'PRESIDENT', '17-NOV-81', 5000, 10)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,comm,deptno) values(7844, 'TURNER', 'SALESMAN', 7698, '08-SEP-81', 1500, 0, 30)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7876, 'ADAMS', 'CLERK', 7788, '23-MAY-87', 1100, 20)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7900, 'JAMES', 'CLERK', 7698, '03-DEC-81', 950, 30)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7902, 'FORD', 'ANALYST', 7566, '03-DEC-81', 3000, 20)
insert into tblEmp(empno,ename,job,mgr_id,hiredate,sal,deptno) values(7934, 'MILLER', 'CLERK', 7782, '23-JAN-82', 1300, 10)


-- Queries --

-- 1. List all employees whose name begins with 'A'.

select ename from tblEmp where ename like 'A%'


-- 2. Select all those employees who don't have a manager.

select ename from tblEmp where mgr_id is null

-- select e1.ename,e2.ename as 'reports to' from tblEmp e1 join tblEmp e2 on e1.mgr_id=e2.empno

-- 3. List employee name, number and salary for those employees who earn in the range 1200 to 1400.

select ename, empno, sal from tblEmp where sal between 1200 and 1400


-- 4. Give all the employees in the RESEARCH department a 10% pay rise.
--    Verify that this has been done by listing all their details before and after the rise.

select empno,ename,job,mgr_id,hiredate,sal as 'Old Salary',(sal+(sal*0.10)) as 'Salary after Hike',deptno from tblemp where deptno=20


-- 5. Find the number of CLERKS employed. Give it a descriptive heading.

select count(*) as 'Number of Clerks' from tblemp where job='Clerk'


-- 6. Find the average salary for each job type and the number of people employed in each job.

select job, count(*) as 'Number of Employees', avg(sal) as 'Average Salary of Employees' from tblEmp group by job


-- 7. List the employees with the lowest and highest salary.

select ename,sal from tblemp where sal=(select min(sal) from tblEmp) or sal=(select max(sal) from tblEmp)


-- 8. List full details of departments that don't have any employees.

select * from tblDept where deptno not in (select distinct deptno from tblEmp)


-- 9. Get the names and salaries of all the analysts earning more than 1200 who are based in department 20.
--    Sort the answer by ascending order of name. 

select ename, sal from tblEmp where job='Analyst' and sal>1200 and deptno=20 order by ename


-- 10. For each department, list its name and number together with the total salary paid to employees in that department.

select dname,deptno,result.[Total Salary] from tblDept
join 
(select deptno as dnum,sum(sal) as 'Total Salary' from tblEmp
group by tblemp.deptno) result on tblDept.deptno = result.dnum
union
select dname,deptno,sal=0 from tblDept where deptno not in (select distinct deptno from tblEmp)

-- OR

select d.dname,d.deptno, sum(e.sal) as 'Total Salary' from tbldept d full outer join tblEmp e
on d.deptno=e.deptno
group by d.deptno,d.dname

-- 11. Find out salary of both MILLER and SMITH.

select ename, sal from tblEmp where ename='MILLER' or ename='SMITH'


-- 12. Find out the names of the employees whose name begin with ‘A’ or ‘M’.

select ename from tblEmp where ename like 'A%' or ename like 'M%'


-- 13. Compute yearly salary of SMITH. 

select ename, sal*12 as 'Annual Salary' from tblEmp where ename ='SMITH'

-- 14. List the name and salary for all employees whose salary is not in the range of 1500 and 2850.

select ename, sal from tblEmp where sal not between 1500 and 2850


