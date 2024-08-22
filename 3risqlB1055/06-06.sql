----cross join 
tbl1 --> 4 rows
tbl2 --> 3
create table std1 (s_id int ,s_name varchar(20));
create table course1 (c_name varchar(20));

insert into std1 values(1,'steven');
insert into std1 values(2,'john');
insert into std1 values(3,'alex');
insert into std1 values(4,'Ellena');


select * from std1;
select * from course1;
insert into course1 values('java');

select * from std1 cross join course1 where c_name = 'SQL';

-----self join 
select Employee_id,first_name,manager_id from employees;

select e.employee_id,e.first_name as workers ,m.first_name 
as re_mgr_name from employees e join employees m on
e.manager_id = m.employee_id order by e.employee_id;

--------------------subquery------------------------
select max(salary) from employees; --> 18000
select first_name from employees where salary = 18000;

select first_name,salary from employees where
salary = (select max(salary) from employees);

---- latest _employee_name
--- oldest _employee_name

---- dept_name --> 'marketing'
select department_id from departments where department_name = 'Marketing';
select first_name from  employees where department_id = 20;

select first_name from  employees where  department_id = 
(select department_id from departments
where department_name = 'Marketing');
------------
2nd highest--salary ,employee_name
select max(salary) from employees; ---18000
-----
select max(salary) from employees where salary < 
(select max(salary) from employees ); --> 17000
----
select first_name,salary from employees where 
salary = (select max(salary) from employees where salary < 
(select max(salary) from employees ));

--- 
select rownum ,employee_id,first_name from employees
order by  employee_id;

---all,in ,any 
select min(salary) from employees where salary in(
select distinct salary from employees  where rownum <3)
order by salary desc ;

select salary from employees where job_id = 'SA_MAN';
--any : any of these --> lowest value
select salary from employees where salary  > any
(select salary from employees where job_id = 'SA_MAN');

---all : highest value
select salary from employees where salary  > all
(select salary from employees where job_id = 'SA_MAN');

---in 
select salary from employees where salary  in
(select salary from employees where job_id = 'SA_MAN');

