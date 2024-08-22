--Display employee_name along with department_name who 
-- are working in "Marketing"
select e.first_name,e.salary,d.department_name from 
employees e join 
departments d USING (department_id)
where d.department_name = 'Marketing';

select e.first_name,e.salary,d.department_name from  employees e join 
departments d USING (department_id)
where e.salary >15000;

select e.first_name,e.salary,d.department_name from  employees e join 
departments d USING (department_id)
where d.department_name = 'Marketing' and e.salary > 6000;

--
--select  e.employee_id ,e.first_name ,
--e.department_id,d.department_name,d.department_id
--from employees e
-- natural join departments d  using(departments) 
-- where e.department_id != d.department_id;
--
--select * from employees;
--select * from departments;


----- outer join : matching + unmatching
---left join :   emp(all records) lj dep (matching records)
select * from employees left join departments using(department_id);

--emp --> dep_id --> 10- 110,null(unmatching for department_table)
select  distinct department_id from employees;
--dept  --> dep_id  10 -110 ,120-270(unmatching for employee_table)
select   department_id from departments;

select * from employees RIGHT join departments using(department_id);

