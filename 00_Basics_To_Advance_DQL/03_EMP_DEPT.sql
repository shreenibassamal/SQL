-- === ASSIGNMENT ON WHERE Clause .==== 
-- WAQTD the annual salary of the employee whos name is smith

-- WAQTD name of the employees working as clerk

-- WAQTD name of the employees working as clerk

-- WAQTD salary of the employees who are working as salesman

-- WAQTD details of the emp who earns more than 2000

-- WAQTD details of the emp whos name is jones

-- WAQTD details of the emp who was hired after 01-jan-81

-- WAQTD name and sal along with his annual salary if the annual salary is more than 12000

-- WAQTD empno of the employees who are working in dept 30

-- WAQTD ename and hiredate if they are hired before 1981

-- WAQTD details of the employees working as manager

-- WAQTD name and salary given to an employee if employee earns a commission of rupees 1400

-- WAQTD details of employees having commission more than salary

-- WAQTD empno of employees hired before the year 87

-- WAQTD details of employees working as an analyst

-- WAQTD details of emps earning more than 2000 rupees per month



-- === ANSWER ON WHERE Clause .==== 
-- WAQTD the annual salary of the employee whos name is smith
select sal*12 as anualSalary
from emp
where ename = 'smith';

-- WAQTD name of the employees working as clerk

-- WAQTD name of the employees working as clerk

-- WAQTD salary of the employees who are working as salesman

-- WAQTD details of the emp who earns more than 2000

-- WAQTD details of the emp whos name is jones

-- WAQTD details of the emp who was hired after 01-jan-81

-- WAQTD name and sal along with his annual salary if the annual salary is more than 12000

-- WAQTD empno of the employees who are working in dept 30

-- WAQTD ename and hiredate if they are hired before 1981

-- WAQTD details of the employees working as manager

-- WAQTD name and salary given to an employee if employee earns a commission of rupees 1400

-- WAQTD details of employees having commission more than salary

-- WAQTD empno of employees hired before the year 87

-- WAQTD details of employees working as an analyst

-- WAQTD details of emps earning more than 2000 rupees per month
