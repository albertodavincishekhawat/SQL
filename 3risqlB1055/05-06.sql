----Employees --> dep_id,manager_id
--- Departments --> dep_id ,manager_id
-- Natural join : 
select * from employees natural join departments;

select manager_id,department_id,first_name from employees;
select manager_id,department_id from departments;

---USING CLAUSE
select * from employees e join departments using(department_id)
order by e.employee_id;

--- join on keyword
---Equi join
select * from employees join departments
on employees.department_id = departments.department_id;

select * from employees emp join departments d
on emp.department_id = d.department_id;

----first_name,salary,department_name
select e.first_name,e.salary ,d.department_name from employees e
join departments d on e.department_id = d.department_id
order by e.employee_id;

----join 3 tables
---emp,dep,job
--first_name,   job_title,   department_name
--  emp           jobs        dept
--job_id,dep_id   job_id       dep_id

select  e.first_name,j.job_title,d.department_name from 
employees e join jobs j
on e.job_id = j.job_id join  departments d 
on e.department_id = d.department_id ;


select  e.first_name,j.job_title,d.department_name,l.city 
from employees e join jobs j
on e.job_id = j.job_id join  departments d 
on e.department_id = d.department_id join locations l 
on d.location_id  = l.location_id ;






