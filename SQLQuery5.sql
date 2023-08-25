create table Employee3(
id int primary key,
name varchar  (20),
email varchar(50),
age int check (age>=18),
country varchar (20) default 'India'
)

--DML --> insert

insert into Employee3 values(1,'Pankaj','pankajbatale@gmial.com',22,'UK')
insert into Employee3 values (2,'Tukaram','tukarambansode@gmial.com',25,'UAE')
insert into Employee3(id,name,email,age) values(3,'gaurav','gaurav@gmail.com',33)
insert into Employee3(id,name,email,age)values(4,'vinod','vinod@gmail.com',26)
insert into Employee3(id,name,email,age)values(5,'girish','girish@gmail.com',24)
insert into Employee3(id,name,email,age)values(6,'rohan','rohan@gmail.com',20)
insert into Employee3(id,name,email,age)values(7,'trisha','trisha@gmail.com',45)
insert into Employee3(id,name,email,age)values(8,'payal','payal@gmail.com',48)
insert into Employee3(id,name,email,age)values(9,'ronny','ronny@gmail.com',28)
insert into Employee3(id,name,email,age)values(10,'rocky','rocky@gmail.com',29)

update Employee3 set country = 'Malaysia' where id = 10 -- (it changes the values by focusing on numbers i.e = 10)
update Employee3 set email = 'Germany@gmail.com' where id = 4
update Employee3 set name  = 'venky' where id = 6
update Employee3 set name  = 'venky',  email = 'venky@gmail.com'   where id = 7
-- delete from Employee3 where id = 5 -- deletes the given columns

select * from Employee3
