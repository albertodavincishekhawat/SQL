----to_date():
--char --> date
----> dd-mm-yy
----- 17-06-03                dd-mm-yy
select * from employees where hire_date = to_date('06-17-03','mm-dd-yy');-- mm-dd-yy

select * from employees where hire_date = to_date('Jun-17-03','MON-dd-yy');-- mm-dd-yy

----null related function
---- multiple row functions,group function
--max(): return max value from given list
select  max(salary) from employees; --18000

--- latest employee
select  max(hire_date) from employees;  --latest employee joining date

select  min(hire_date) from employees;  -- oldest employee joining date

---sum()
-- avg()
--10000
--10000
select round(avg(distinct salary)) from employees; --6481

--count(): 
select count(first_name) from employees; --107
select  count(distinct department_id) from employees; --11 

group by clause 
---  job_id : avg salary
select  job_id,avg(salary) from employees group by job_id;

select  Department_id,Max(salary) from employees
group by department_id having  department_id <=50 order by department_id;

select  Department_id,Max(salary) from employees
group by department_id having  department_id <=50 order by max(salary);

----- null related function--------------

select  first_name, salary, salary + (salary * commission_pct) FROM employees;

--nvl (arg1,arg2) : arg1 (input) column_name (null ) -->  replace arg2(expr)
  
select nvl(commission_pct,1) from employees;
---
select first_name,salary,  salary +(salary * 
 nvl(commission_pct,0))as increment_sal FROM employees;

---NVL2(arg1,arg2,ar3) 
select nvl2(commission_pct,1,0) from employees;



