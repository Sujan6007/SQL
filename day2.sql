 insert into dept(id,dept_name)
  values(1,'social'),(2,'science'),(3,'electronics');

  select * from dept;
 select s.* from dept d, stud_table s where s.dept_id=1;
 
select s.* from dept d, stud_table s where s.marks>500 and d.dept_name='maths' and s.dept_id=d.id;

alter table stud_table add result varchar(50);

alter table stud_table modify result int;
 
alter table stud_table drop result;
  
 delete from dept where dept_name='social';
 
  delete from dept where id=1 and dept_name='social' ;
 
  truncate table dept;
 
  select * from employee;
 
  insert into employee(emp_name,salary)
   values('Sujan',26000),('Mahesh',27000),('Srinivas',30000),('Ramu',32000);

   truncate table employee;
 
  select * from stud_table;

   update stud_table set marks=1000 where id=1;
   

   create table sales(
   salesID int not null primary key ,
   salesName varchar(50),
   adress varchar(50)
   );
   
  
 create table orders_sales(
   id int primary key ,
   productName varchar(50),
   adress varchar(50),
   salesID Int,
   constraint FK_order foreign key(salesID) references sales(salesID)
   );
  
 insert into sales(salesID,salesName,adress)
   values(1,'Sujan','Shimoga'),(2,'Mahesh','Hyderabad'),(3,'Srinivas','Bangalore'),(4,'Ramu','Bangalore');
  
 insert into orders_sales(id,productName,adress,salesID)
   values(1,'Fogg','Shimoga',1),(2,'Apple','Bangalore',2),(3,'acer','Hyderabad',1);

   select * from sales join orders_sales;
   select * from orders_sales;
    select * from sales where salesID in (select id from orders_sales where productName = 'Fogg' || adress='Hyderabad' );
    
     select * from sales where salesID in (select id from orders_sales where productName = 'acer' && adress = 'Hyderabad');
     
    select * from sales;
