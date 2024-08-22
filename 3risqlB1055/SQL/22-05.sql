----sql operators
---In operator:  multiple value match
---job_id  : 'SA_MAN','IT_PROG','PU_CLERK'

select first_name,job_id from employees
where job_id in('SA_MAN','IT_PROG','PU_CLERK');

--- dep_id 90,60,50
select * from employees where department_id in (90,60,50);

----between ....and : used to match renge value ..
--sal --15000 to 20000
select * from employees where  salary between 15000 and 20000;

----Like :  used to match patterns
---  % : zero or more character
---  _ : single character
---name : start with 'A'
select * from employees where first_name like('A%');
-----name : end with 'A'
select * from employees where first_name like('%a');

----  name --> 3rd ch -e 5th ch- a
select * from employees where first_name like('__e_a%');

----is null : used to match  only null 
select * from employees where manager_id is null;

----logical operators 
---And,or,not
---salary ->  < 10000 , name start with 'A'
select * from employees where salary <10000 and first_name like('A%');

----or : 
select * from employees where salary > 10000 or first_name like('A%');

----not : != ,<>
--job_id should not  end with 'CLERK'
select *from employees where job_id not like('%CLERK');

--- end with 'MAN' or 'CLERK'
select *from employees where job_id not like('%CLERK')
and  job_id  not like('%MAN');

--- end with 'MAN' or 'CLERK'
select * from employees where job_id
not in ('SA_MAN','PU_CLERK');

select * from employees where department_id  not in (90,60,50);

