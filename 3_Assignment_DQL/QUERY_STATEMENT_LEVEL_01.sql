-- After opening workspace use below 2 statement as

-- 1)  Write a Query to Display show all databases below.
show databases;
-- 2)  Write a Query to use perticular database as below.
use sql_practice;
-- ==================================================== QUERY_STATEMENT_LEVEL_01 ==========================================================================
-- QUESTIONS ON EMP AND DEPT TABLE:
-- 1) Write a Query to Display all details from the employe table
select *
from EMP;

-- 2) Write a Query to Display all details from the department table
select *
from DEPT;

-- 3) Write a Query to Display NAMES OF ALL THE EMPLOYEES.
select ename
from emp;

-- 4) Write a Query to Display NAME AND SALARY GIVEN TO ALL THE EMPLOYEES.
select ename, sal
from emp;

-- 5) Write a Query to Display NAME AND COMMISSION GIVEN TO ALL THE EMPLOYEES.
select ename ,comm
from emp;

-- 6) Write a Query to Display EMPLOYEE ID AND DEPARTMENT NUMBER OF ALL THE EMPLOYEES IN EMP TABLE.
select empno, deptno
from emp;

-- 7) Write a Query to Display ENAME AND HIREDATE OF ALL THE EMPLOYEES . 
select ename, hiredate
from emp;

-- 8) Write a Query to Display NAME AND DESIGNATION OF ALL THE EMPLPOYEES .
select ename, job
from emp;

-- 9) Write a Query to Display NAME , JOB AND SALARY GIVEN ALL THE EMPLOYEES.
select ename, job, sal
from emp;
-- 10)Write a Query to Display DNAMES PRESENT IN DEPARTMENT TABLE.
select dname
from dept;

-- 11)Write a Query to Display DNAME AND LOCATION PRESENT IN DEPT TABLE.
select dname, loc
from dept;