 show databases;  
  create database students;

 use students;
 show tables;
 
drop table students;
 
select * from stud_table s where s.name='sujan';

 insert into stud_table (id,name,marks,dept_id)
 values(1,'sujan',520,1),(2,'ramu',700,1),(3,'mahesh',650,2),(4,'raju',900,2),(5,'vijay',850,3);
 
 select * from stud_table;
 
 select id, name from stud_table;
 select name, marks from stud_table;
 
 create table teachers(
  id int not null primary key,
  name varchar(50),
  salary int
  );
  
  insert into teachers(id,name,salary)
  values (1,'ravi',50000),(2,'ramu',30000),(3,'kavana',20000),(4,'raghu',40000);
  select * from teachers;
  select count(*) as Total_salary from teachers;
  
  select name from teachers;
  
  select name from teachers where salary=30000;

 select count(*) from stud_table;
 
select * from stud_table group by marks;
