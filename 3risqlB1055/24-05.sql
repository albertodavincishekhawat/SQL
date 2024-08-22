-----character functions----
---length(): return total number of characters..
select length('sql') from dual; --3
select first_name, length(first_name) from employees;

---instr() : index : return indec number of substring(charater)
--4 param
--syntax instr(i/p str,substr_ch,[start_index,occur..])
--we learn sql -- > find index num of e.
select instr('we learn sql','e') from dual; --> 2
select instr('we learn sql','learn') from dual;-->4
---> learn --> e (index ?)
--> 2nd e  (index ?)
select instr('we learn sql','e',3) from dual; --> 5

--today we learn python,it is very simple to learn'
---> find  4th e index number
select instr('today we learn python,it is very simple to learn','e',31) 
from dual;
--1st e --> 8
--2nd e -->  11
--3rd e --> 30
--4th e --> 39
----4th e (index num ?)
select instr('today we learn python it is very simple to learn','e',1,4) 
from dual;
---'today we learn python' --> i/p str
-- 'e' -- sub_str
--  1 --> start_index number to read
--- 4  --> occurance (4th)

---substr:  return substring 
--syntax : substr(i/p,start_index_num,[o/plength)
---we learn sql --> 'sql'
--> gm 
select  substr('hello gm  all' ,7) from dual;  --> gm all
select  substr('hello gm all' ,7,2) from dual; --> gm
--> sql 
select substr('we learn sql, sql is easy to learn',
instr('we learn sql, sql is easy to learn','s'),length('sql')) from dual;

----easy to learn 
select instr('we learn sql, sql is easy to learn','e',1,3) from dual;
--> easy --> e 22

select substr('we learn sql, sql is easy to learn',22,
length('easy to learn')) from dual;

---replace()
select replace('we learn sql', 'sql','python') from dual; --we learn python
select replace(first_name,'a','@') from employees;

---lpad  : append (add) left side append
-- rpad : right side append
--sql --> ***sql@@@
--left side ***sql
select lpad('sql',length('sql')+3,'*') from dual;
-- 1 @ add employee_name 
--- john--> @john
select lpad(first_name,length(first_name)+1,'@') from employees;
---Rpad
--right sql@@@

select rpad(lpad(first_name,length(first_name)+1,'@'),
length(first_name)+2,'@') from employees;

--- Ellen --> @ellen@
select rpad(lpad('ellen',length('ellen')+1,'@'),
length(lpad('ellen',length('ellen')+1))+1,'@'
)from dual;

select length('ellen') +2 from dual;
