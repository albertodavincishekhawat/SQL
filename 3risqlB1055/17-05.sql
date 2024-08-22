-----DML
------------sql-------------
--DDL : Create,alter,drop,truncate
--DML : Insert,update,delete,select
--DCL : grant ,revoke
--TCL : Commit,rollback,savepoint
---Select : 
select * from employees;

--comments:  1.single line  (--) 2. multiline /*  stat,... */

--select first_name,email from employees;
/*
select * from jobs;
select * from departments;
*/
---Describe: it's return short info of table..
describe jobs;

---null: unknown data...
select * from employees;

-- Distinct : unique 
-- Eliminate duplicate rows  : distinct
select Distinct department_id  from employees;

----Concatination operator ( || ) : merge two or more columns
select first_name || last_name  from employees;
-- ' '  --> ' ' 
select first_name ||' ' || last_name from employees;

---column alias ( rename your o/p column name)
-- as optional
select first_name ||' ' || last_name  as FullName from employees;
select first_name Name ,salary as sal from employees;

----Arithmetic operators...: 
---- + ,-,* ,/
---Salary  2000 increment
select first_name ,salary ,salary+2000 from employees;
---
select first_name,salary * 12 as annual_sal from employees;

select first_name, hire_date,hire_date + 15  from employees;

----literals..: sequence of characters enclosed in single quote..
'sql' ,'my name is'

-- 'my name is steven'
---my name is lex
select 'my name is ' || first_name from employees;
select 'my name is'||' ' || first_name from employees;