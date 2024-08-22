---SESSIONTIMEZONE : Returns time zone of the user’s session.
select SESSIONTIMEZONE from dual;
--SYSTIMESTAMP : Returns the date and time of the database. (db)
select SYSTIMESTAMP from dual;
--CURRENT_TIMESTAMP : Returns current date and time from user’s session.
select  CURRENT_TIMESTAMP from dual;

--Extract(): used to extract (return) only day or month or year value
--date format --> day,month,year
select Extract(month from hire_date) from employees; -->5
select Extract(year from sysdate) from dual; -->2024
select Extract(day from sysdate) from dual; -->5

---Display employees all details.those joining month is march..
select * from employees where Extract(month from hire_date) = 03;

----------------- conversion function--------
select * from employees where department_id = '$90'; --> 90

--char --> number
--number --> char
--
--char --> date
--date --> char

---1) to_char (number --> char /  date --> char) , format_model )
---Date to character
--Date : dd-mm-yy
select to_char(sysdate,'ddth') from dual;

select to_char(sysdate,'mmspth') from dual; --> fifth
select to_char(sysdate,'Month') from dual; 

--write a sql query to display employees name and  joining date in below format 
--Ex: 28-05-24 --> steven  28th-May-2024

select first_name,to_char(hire_date,'fmddth-Mon-yyyy') from employees;

----- number to charaacter
--to_char(number,format_model)
----Salary  --> $18000 
---format model
--9 
--0 
select to_char(18000,'fm$999999999') from dual;
select to_char(salary,'fm$00000') from employees;
---currency symbol 
alter session set nls_currency = 'Rs.';
select  to_char(salary,'fmL9999999') from employees;

--- 
--to_number(char)
--select  '$2' +'$2' from dual; --> 2 + 2 = 4 ( $4)
select  to_number('$20','fm$99') + to_number('$2','fm$9') as abc from dual;
-- $22 --> chqracter
select  to_char(to_number('$20','fm$99') + to_number('$2','fm$9'),'fm$99') 
from dual;



