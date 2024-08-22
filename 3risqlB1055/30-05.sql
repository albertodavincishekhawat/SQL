---NVL2(arg1,arg2,ar3) 
select nvl2(commission_pct,1,0) from employees;

---nullif (arg1,arg2)
--same --> null
---diff--> first_value
select nullif('sql','abc') from dual;

select  first_name,length(first_name),length(last_name)
,nullif(length(first_name),length(last_name)) from employees;

-----Decode function:  if ...else...
--job_id --> 'IT_PROG'  salary + 5000
            --> sa_man   salary + 2000
            --> clerk  salary +3000
    --remaining--> salary +500
--
--decode(job_id,search_condition1,result1,search_condition2,result2,default)
select first_name,job_id,salary,
decode(job_id,'IT_PROG',salary+ 5000,'SA_MAN',salary+2000,'PU_CLERK',
salary +3000 , salary+500) from employees;

----listagg() : used to merge multiple rows and return it into one row.
--syntax: Syntax :
--  LISTAGG(column name)[,delimeter] within group 
--(order by [sort-expression])

---first_name
select LISTAGG(first_name,',') within GROUP (order by (hire_date)) from employees;

---
select department_id ,listagg(first_name,',') within GROUP(order by(hire_date))
from employees group by department_id order by department_id;

------

