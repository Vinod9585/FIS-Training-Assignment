--------------------------------------------------------ASSIGNMENT 2-----------------------------------------------------
select * from tblDept

select * from tblEmp

-- 1. Retrieve a list of MANAGERS.
select distinct(e2.ename) as 'Manager' from tblEmp e1 join tblEmp e2 on e1.mgr_id=e2.empno


-- 2. Find out the names and salaries of all employees earning more than 1000 per month.
select ename, sal from tblEmp
where sal>1000


-- 3. Display the names and salaries of all employees except JAMES.
select ename, sal from tblEmp
where ename!='JAMES'

-- 4. Find out the details of employees whose names begin with ‘S’. 
select * from tblEmp where ename like 'S%'

-- 5. Find out the names of all employees that have ‘A’ anywhere in their name.
select ename from tblEmp where ename like '%A%'

-- 6. Find out the names of all employees that have ‘L’ as their third character in their name.
select ename from tblEmp where ename like '__L%'

-- 7. Compute daily salary of JONES.
select (sal/30) as 'Daily Salary' from tblEmp where ename = 'JONES'

-- 8. Calculate the total monthly salary of all employees. 
select ename, sal from tblEmp

-- 9. Print the average annual salary .
select avg(sal*12) as 'Average Annual Salary' from tblEmp

-- 10. Select the name, job, salary, department number of all employees except SALESMAN from department number 30. 
select ename, job, sal, deptno from tblEmp where deptno=30 and job!='SALESMAN'

-- 11. List unique departments of the EMP table. 
select distinct(d.deptno),(d.dname) from tblemp e join tblDept d
on e.deptno=d.deptno

-- 12. List the name and salary of employees who earn more than 1500 and are in department 10 or 30.
--     Label the columns Employee and Monthly Salary respectively.
select ename as 'Employee', sal as 'Monthly Salary' from tblEmp
where sal > 1500 and (deptno = 10 or deptno = 30)

-- 13. Display the name, job, and salary of all the employees whose job is MANAGER or ANALYST and 
--     their salary is not equal to 1000, 3000, or 5000. 
select ename, job, sal from tblEmp where (job = 'Manager' or job = 'Analyst') and (sal not in (1000,3000,5000))

-- 14. Display the name, salary and commission for all employees whose commission 
--     amount is greater than their salary increased by 10%. 
select e2.ename,e1.sal,e1.comm from tblEmp e1 inner join 
(select ename,(sal+(sal*0.1)) as 'Salary after 10% hike'from tblEmp) e2 on e1.ename = e2.ename where comm>[Salary after 10% hike]


-- 15. Display the name of all employees who have two Ls in their name and are in department 30 or their manager is 7782.

select ename from tblEmp where ename like '%l%l%' and (deptno=30 or mgr_id=7782)

-- 16. Display the names of employees with experience of over 10 years and under 20 yrs.

select ename, DATEDIFF(yy,hiredate,getdate()) as 'Experience in Years' from tblemp
where DATEDIFF(yy,hiredate,getdate())>10 and DATEDIFF(yy,hiredate,getdate())<20
order by [Experience in Years]


 -- 17. Retrieve the names of departments in ascending order and their employees in descending order. 
 select d.dname, e.ename from tblDept d join tblEmp e 
 on d.deptno = e.deptno 
 order by d.dname , e.ename desc


 -- 18. Find out experience of MILLER. 
 select DATEDIFF(yy,tblemp.hiredate,getdate()) as 'Experience of MILLER in years' from tblemp where ename like 'MILLER'


 ------------------------------------------------------------------------------------------------------------------------------