select * from student;
insert into student VALUES(3,'rob','rob@gmail.com','Devops'); 

---update: 
update student set email = 'Ellena123@gmail.com' 
where std_id = 2;

alter table student add course VARCHAR(20);
update student set course = 'python';
update student set course = 'java', email = 'elle@yahoo.in'
where std_id = 2;

--delete : 
delete from student where  std_id = 123;
---rowid 
select rowid,std_id,first_name from student;

delete from student where rowid in('AAAIrYAAEAAABEWAAE',
'AAAIrYAAEAAABEWAAF', 'AAAIrYAAEAAABEWAAG');

select * from student;
insert into student values(4,'suvidha','suvidha.3ri@g.com','null');

--- constraint : we can apply validation on data..

email --> varchar(30)
salary --> 30000  , -30000

--- not null
-- unique 
-- primary key : not null + unique 
-- foreign key
--- check : pattern match 
--default
-----not null
[constraint cons_name] cons_type ;
---faculty:
create table faculty (id int constraint  nn_id  not null ,
first_name varchar(20) not null,
last_name varchar(20));

select * from faculty;
insert into faculty values(null,'abc','abc');

--sub varchar
alter table faculty add subject varchar(20) ;
alter table faculty add (ph_no number ,salary number) ;

--unique
alter table faculty add unique(ph_no);
--check 
alter table faculty add constraint check_sal check(salary>0);
---check(email like('%gmail.com')
---
create table course(
c_id int primary key, ---apply only one column 
c_name varchar(20) unique not null,
c_fees number check(c_fees>0) not null,
c_duration  varchar(30) constraint nnc_d not null );


alter table faculty add 
check(email like('%gmail.com'));
select * from faculty;

insert into faculty values
(1,'abc','test','dsd',465567,23456,'abcgmail.com');




