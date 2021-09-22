 show databases;  
  create database students;

 use students;
 show tables;
 
drop table students;
 
select * from stud_table s where s.name='sujan';

 insert into stud_table (id,name,marks,dept_id)
 values(1,'sujan',520,1),(2,'ramu',700,1),(3,'mahesh',650,2),(4,'raju',900,2),(5,'vijay',850,3);

 select count(*) from stud_table;
 
select * from stud_table group by marks;