------DDL Commands ------
---create:
--- alter
--drop
--truncate--
---Create : table create 
---syntax: create table tbl_name(column1 datatype (constraint),col2 datatype,);

--student
create table student(std_id number,first_name varchar(20),email varchar(30));

describe student;
---alter : 
--add :  add column 
---course column
alter table student add course varchar(20);
alter table student add (ph_no number,address varchar(30));
select * from student;
alter table student add city NUMBER;
--modify: change datatype 
alter table student modify city varchar(20);
--rename
--using rename we can rename column name also and table name also.
--- address--> add
alter table student rename column address to addr ;
--rename table 
alter table stdudent1 rename to student1;
desc student1;
--drop : delete column and table also
alter table student1 drop column addr;

drop table student1;
--truncate : remove all data(values) (rows).
--copy table 
create table copy_dept as select * from departments ;
select * from copy_dept;
truncate table copy_dept;

--------------------DML-------------------
---table : insert : records
--update:
---delete: condition
--select

---insert : add rows 
select * from student;
insert into student (first_name,std_id,email)
values('suvidha',123,'suvidha@g.com');

insert into student values(123,'john','joh@g.com');

insert into student values((123,'john','joh@g.com'),
(123,'john123','joh@g.com'),(123,'john12345','joh@g.com'));


