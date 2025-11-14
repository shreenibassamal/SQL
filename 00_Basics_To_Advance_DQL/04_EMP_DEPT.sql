-- === ASSIGNMENT ON LOGICAL OPERATORS ===

-- WAQTD details of the employees working as clerk and earning less than 1500

-- WAQTD name and hiredate of the employees working as manager in dept 30

-- WAQTD details of the emp along with annual salary if they are working in dept 30 as salesman and their annual salary has to be greater than 14000

-- WAQTD all the details of the emp working in dept 30 or as analyst

-- WAQTD names of the employees whos salary is less than 1100 and their designation is clerk

-- WAQTD name and sal , annual sal and deptno if deptno is 20 earning more than 1100 and annual salary exceeds 12000

-- WAQTD empno and names of the employees working as manager in dept 20

-- WAQTD details of employees working in dept 20 or 30

-- WAQTD details of employees working as analyst in dept 10

-- WAQTD details of employee working as president with salary of rupees 4000

-- WAQTD names and deptno , job of emps working as clerk in dept 10 or 20

-- WAQTD details of employees working as clerk or manager in dept 10

-- WAQTD names of employees working in dept 10 , 20 , 30 , 40

-- WAQTD details of employees with empno 7902,7839

-- WAQTD details of employees working as manager or salesman or clerk

-- WAQTD names of employees hired after 81 and manager in dept 10

-- WAQTD names of employees hired after 81 and before 87

-- WAQTD details of employees earning more than 1250 but less than 3000

-- WAQTD names of employees hired after 81 into dept 10 or 30

-- WAQTD names of employees along with annual salary for the employees working as manager or clerk into dept 10 or 30

-- WAQTD all the details along with annual salary if sal is between 1000 and 4000 annual salary more than 15000





-- === ANSWER ON LOGICAL OPERATORS ===

-- WAQTD details of the employees working as clerk and earning less than 1500
select * 
from emp
where job='clerk' and sal <1500;

-- WAQTD name and hiredate of the employees working as manager in dept 30

-- WAQTD details of the emp along with annual salary if they are working in dept 30 as salesman and their annual salary has to be greater than 14000

-- WAQTD all the details of the emp working in dept 30 or as analyst

-- WAQTD names of the employees whos salary is less than 1100 and their designation is clerk

-- WAQTD name and sal , annual sal and deptno if deptno is 20 earning more than 1100 and annual salary exceeds 12000

-- WAQTD empno and names of the employees working as manager in dept 20

-- WAQTD details of employees working in dept 20 or 30

-- WAQTD details of employees working as analyst in dept 10

-- WAQTD details of employee working as president with salary of rupees 4000

-- WAQTD names and deptno , job of emps working as clerk in dept 10 or 20

-- WAQTD details of employees working as clerk or manager in dept 10

-- WAQTD names of employees working in dept 10 , 20 , 30 , 40

-- WAQTD details of employees with empno 7902,7839

-- WAQTD details of employees working as manager or salesman or clerk

-- WAQTD names of employees hired after 81 and manager in dept 10

-- WAQTD names of employees hired after 81 and before 87

-- WAQTD details of employees earning more than 1250 but less than 3000

-- WAQTD names of employees hired after 81 into dept 10 or 30

-- WAQTD names of employees along with annual salary for the employees working as manager or clerk into dept 10 or 30

-- WAQTD all the details along with annual salary if sal is between 1000 and 4000 annual salary more than 15000