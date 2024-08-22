----row restriction--
---order by clause : sort output column data..
select * from employees;
select * from employees order by first_name ;

---Descending : Desc
select * from employees order by first_name desc ;
select * from employees order by hire_date asc;

-- dep_id = 90
select * from employees where department_id = 90 order by first_name;

select * from employees order by first_name asc ,last_name desc;

----Display  employee name those are joined our organization in
--march month.. --03
--like
--date -- dd-mm-yy. __.03___ or ___03%
----- ___mar%   17-mar-04  like('__-mar%')
-----17/03/07 --> like('__/03%')

------ Function ------
---single row :
--character function:
--upper() : convert value (arguments) in upper case..
select  first_name,upper(first_name) from employees;
---lower() :  apply Email
-- initcap() 
--multiple row: avg()

---- Dual table : dummy table 
--upper() --> suvidha
select upper('suvidha') from dual;
--'we learn sql'
select initcap('we learn sql') from dual;

--Describe --
Desc dual;

select initcap(first_name) from employees;

----Data types
--first_name : character --> char  varchar2(max_limit 255)

--first_name varchar(30)
-- char(30)
--number(p,s) --> salary --> number(7,2)
--25500.45
--varchar
----john --> 20  (4) 
--char 
--john --> 4  --> 20


---- 
---concate ( merge two or more columns value)
--syntax : concate(arg1,arg2)
---first_name ,last_name
select concat(first_name,last_name) from employees;
--steven*
select concat(first_name,'*') from employees;
--nested function : 
select  concat(concat(first_name ,'-'),last_name)  from employees;




