select * from faculty;
information course;
----how to drop constarint
--alter:
alter table faculty drop constraint NN_ID;
---foreign key : 
dept --> dep_id  (pk)
emp -->  emp_id (pk)dep_id (fk)
alter table faculty add c_id int ;
alter table faculty add constraint fk foreign key(c_id) 
references course(c_id);

create table student(
s_id int primary key,  --> column level constraint
first_name varchar(20) not null,
last_name varchar(25) not null,
email varchar(30),
ph_no number  not null unique,
course_id int --foreign key reference course(c_id) ,
constraint uq_email unique(email), --> table level constarint 
constraint course_id foreign key(course_id)
references course(c_id)
);
--alter table student add constraint pk primary key(s_id);

information course;


create table a(a_id int primary key,
a_name varchar(20) not null);

create table b (b_id int primary key,
a_id int,
constraint fk_b foreign key(b_id) references a(a_id) );

---Drop 
--cascade
alter table course  drop constraint SYS_C0010035 cascade;


------- TCL ----
----commit: permanent save query data
--rollback : ctrl +Z 
--savepoint : breakpoint (check mark)

select * from course;
insert into course values(1,'java',3457546,'6');
insert into course values(2,'python',547546,'5');
commit;
insert into course values(3,'python full stack',547546,'7');
insert into course values(4,'sql',547546,'1');
update course set c_duration = '9' where  c_id = 3;
savepoint a;

insert into course values(5,' aws coud',6747546,'5');
savepoint b;
insert into course values(6,'c++',6747546,'5');
savepoint c;

rollback to b ;

--rollback;

-------------- joins --------
---merge tables

emp_name (first_name, last_name,salary,department_name)
emp (dep_id) , --> fk  90
department (dep_id)--> pk 90 -- Marketing

inner join (equi join,join on ,using)
outer join (left ,right ,full)
self join
cross join

emp --> dep_id
dep --> dep_id l_id
location--> l_id

