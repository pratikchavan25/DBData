create table tableE
(
id int,
name varchar(20),
city varchar(20)
)


insert into tableE values(1,'Tara','Pune')

create table table02
(
id_2 int,
name varchar(20),
L_name varchar(20)
)

insert into table02 values(1,'Don','Nagpur')


INSERT INTO tableE
SELECT * FROM  table02
WHERE name='John'


select * from tableE