-- After opening workspace use below 2 statement as

-- 1)  Write a Query to Display show all databases below.
show databases;
-- 2)  Write a Query to use perticular database as below.
use sql_practice;
-- ==================================================== QUERY_STATEMENT_LEVEL_02 ==========================================================================
-- where clause:

-- 1) Write a Query to Display the annual salary of the employee whos name is smith
select sal*12
from emp
where ename = "smith";

-- 2) Write a Query to Display name of the employees working as clerk
select ename
from emp
where job = "clerk";

-- 3) Write a Query to Display salary of the employees who are working as salesman.
select sal
from emp
where job = "salesman";

-- 4) Write a Query to Display details of the emp who earns more than 2000.
select *
from emp
where sal >2000;

-- 5) Write a Query to Display details of the emp whos name is jones
select *
from emp
where ename ="jones";

-- 6) Write a Query to Display details of the emp who was hired after 81-01-01
SELECT 
    *
FROM
    emp
WHERE
    hiredate > 1981 - 01 - 01;

-- 7) Write a Query to Display name and sal along with his annual salary if the annual salary is more than 12000

-- 8) Write a Query to Display empno of the employees who are working in dept 30

-- 9) Write a Query to Display ename and hiredate if they are hired before 1981

-- 10) Write a Query to Display details of the employees working as manager

-- 11) Write a Query to Display name and salary given to an employee if employee earns a commission of rupees 1400

-- 12) Write a Query to Display details of employees having commission more than salary

-- 13) Write a Query to Display empno of employees hired before the year 87

-- 14) Write a Query to Display details of employees working as an n analyst

-- 15) Write a Query to Display details of emps earning more than 2000 rupees per month