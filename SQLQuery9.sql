CREATE TABLE EMPLOY(
Id INT PRIMARY KEY,
name VARCHAR (25),
salary INT,
Dept_name VARCHAR (20),
city VARCHAR (18),
country VARCHAR (15),
Gender VARCHAR (10),
department VARCHAR (20)
)
exec sp_help EMPLO

INSERT INTO EMPLOY VALUES (1,'pankaj',50000,'Mechanical','Pune','India','Male','Admin');
INSERT INTO EMPLOY VALUES (2,'raj',25000,'Electrical','Mumbai','Nepal','Male','HR');
INSERT INTO EMPLOY VALUES (3,'dhiraj',30000,'Maintenance','Delhi','Germany','Male','MANAGER');
INSERT INTO EMPLOY VALUES (4,'priya',40000,'SupportSystem','Banglore','USA','Female','TL');
INSERT INTO EMPLOY VALUES (5,'kailas',80000,'OilRefinery','Salviya','Dubai','Male','SALES');
INSERT INTO EMPLOY VALUES (6,'riya',15000,'Civil','Moshi','Atlanta','Female','BUSINESS');
INSERT INTO EMPLOY VALUES (7,'pratik',1000000,'IT','Glanza','SouthAfrica','Male','CEO');

ALTER TABLE EMPLOY
DROP COLUMN department;

SELECT * FROM EMPLOY
--write a query to find the employee whose salary is more than 30k and less than 80k
SELECT * FROM EMPLOY WHERE salary>=30000 AND salary<=80000;
--write query to find the max salary
SELECT MAX(salary) AS 'MAX salary' FROM EMPLOY;
-- write query to find total no. of employee
SELECT COUNT (Id) AS COUNT FROM EMPLOY;
--find employee whose salary is less than 50000  and he is working in admin dept.
SELECT * FROM EMPLOY WHERE salary<=50000 AND department = 'ADMIN';
-- write query to arrange all the employees in descending ordeer of salary
SELECT * FROM EMPLOY
ORDER BY salary DESC
--write QUERY to display employee whose salary is not in a range of 20000 to 30000 
SELECT * FROM EMPLOY WHERE  salary NOT BETWEEN 20000 AND 30000;
--write QUERY to display name and department of employee who's from pune and banglore city
SELECT name,department FROM EMPLOY WHERE city IN ('Pune','Banglore');
--write QUERY to display all the employee whose department contains r character
SELECT * FROM EMPLOY WHERE department like '%r%';

create table dept01(
did int primary key,
dep_name varchar (30)
)
insert into dept01 values (1,'hr');
insert into dept01 values (2,'admin');
insert into dept01 values (3,'TL');
insert into dept01 values (4,'testing');
insert into dept01 values (5,'Manager');
SELECT * FROM dept01
SELECT * FROM EMPLOY
--exec sp_help dept;

SELECT e1.*,d1.dep_name
from EMPLOY e1
inner join dept01 d1 on d1.did=e1.Id


ALTER TABLE EMPLOY
ADD dept01 int;


--display emp who have 2nd & 3rd highest salary
SELECT * FROM EMPLOY 
ORDER BY salary DESC 
offset 1 ROWS
FETCH NEXT 2 ROWS only;
 -- INNER JOIN


--select * from dept01;
--select * from EMPLOY;

--select  e.dept_name,d.dep_name  from  EMPLOY  e   inner join  dept01  d  on d.dep_name=e.Dept_name where e.Dept_name="IT";

