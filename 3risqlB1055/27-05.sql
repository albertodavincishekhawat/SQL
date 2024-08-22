----trim() : remove same  character or spaces...
--'    sql   ' --> sql
select trim('    sql   ')  from dual;

select trim('@' from '@@@@sql@@@@') from dual;
select trim(Leading '@' from '@@@@sql@@@@') from dual;
select trim(trailing '@' from '@@@@sql@@@@') from dual;
-- '@#!$ we learn sql #!@$' --> we learn sql
--Ltrim(): only remvove left side multiple types character from given string
--rtrim():only remvove right side multiple types character from given string

select Ltrim('@#!$ we learn sql #!@$','#@$!') from dual;
select Rtrim('@#!$ we learn sql #!@$','#@$!') from dual;

---reverse(): reverse your input string
select reverse('we learn sql') from dual;

select reverse(first_name) from employees;

select rtrim(Ltrim('@#!$ we learn sql #!@$','#@$!'),'#!@$') from dual;

------number functions
---round(): To round a given number to the nearest integer
--or to a certain decimal place. 
--25456.6789546467
select round(25456.6789546467) from dual;
select round(25456.6789546467,3) from dual;
select round(25456.6784546467,3) from dual;

--trunc: Truncates(remove) values to the specified number of decimal places.
select trunc(25456.6789546467,3) from dual;

--Mod(): reminder
select mod(10,4) from dual; --2
select mod(10,5) from dual; --0

---ceil 10 --11 : nearest highest int number
select ceil(10.3) from dual;
---floor: nearest lowest int numbers
select floor(10.9) from dual;--10 

---power():
select power(3,3) from dual;
select power(4,5) from dual;--4^5
--sqrt:
select sqrt(9) from dual;

-----Date functions---
--Returns the current date of the OS where oracle database is installed.
select sysdate from dual; --  database (os) date 
--Retushe current date of the place where the user’s session is logged in from.
select current_date from dual; -- session login
---add_months: add months into given date.
select add_months(sysdate,3) from dual;
select add_months('28.05.24',3) from dual;
--hire_date
select  first_name,add_months(hire_date,3) from employees;
---months_between(dt1,dt2): return the difference between to date 
select months_between(sysdate,'27-04-24') from dual;

select first_name,hire_date,sysdate,
round(months_between(sysdate,hire_date)) from employees;

--last_day :
select last_day(sysdate) from dual;
select first_name, hire_date,last_day(hire_date) from employees;
--next_day:
select next_day(sysdate,'sat') from dual;

select first_name,hire_date,next_day(hire_date,'sat') from employees;

-- After 3 months of probation period find the first sat date..
select first_name,hire_date,next_day(add_months(hire_date,3),'sat')
from employees;


