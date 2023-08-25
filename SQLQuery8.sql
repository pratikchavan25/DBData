CREATE TABLE Employee07(
Emp_Id INT PRIMARY KEY,
Emp_name VARCHAR (25),
salary INT,
age VARCHAR (10),
country VARCHAR (15),
Dept_name VARCHAR (20),
Address VARCHAR (35),
Emp_designation VARCHAR (27),
Gender VARCHAR (10)
)

INSERT INTO Employee07 VALUES (1,'pankaj',25000,'Mechanical','Baner','Manager','Male');
INSERT INTO Employee07 VALUES (2,'rani',45000,'Civil','Bahren','worker','Female');
INSERT INTO Employee07 VALUES (3,'Jitendra',35000,'electrical','Bali','CEO','Male');
INSERT INTO Employee07 VALUES (4,'Elon',55000,'AI','Fatimanagar','TeamLead','Male');
INSERT INTO Employee07 VALUES (5,'Dharmendar',15000,'Maintenance','Bavdhan','HR','Male');




SELECT * FROM Employee07

--(1) Display Employee name salary and designation 
SELECT  Emp_name , salary , Emp_designation FROM Employee07;
--(2) Update the salary by 10 % of employee who is from bali address
UPDATE Employee07 SET salary = salary+(salary*0.10) WHERE  address = 'Bali';
--(3) delete all the employee whose salary is less than 20000 and the address is pune
DELETE FROM Employee07 WHERE salary<= 20000 and address = 'Bali';
--(4) update the address of employee whose designation is manager
UPDATE Employee07 SET Address = 'Malaysia' WHERE Emp_designation = 'Manager';
--(5) display all the female employee
SELECT * FROM Employee07 WHERE Gender = 'Female';
--(6) display all the employee from banglore aaddress
SELECT * FROM Employee07 WHERE Address = 'Bahren';
--(7) display all employee from HR dept where location is MUmbai
SELECT * FROM Employee07 WHERE Address = 'Fatimanagar'; 
--(8) delete the employee from sales department and salary is more than 25000
DELETE FROM Employee07 WHERE SALARY >= 25000 ;

UPDATE Employee07 SET  Emp_Id = 11 , Emp_name = 'Ghanshyam', age = 28 , country = 'India';

--wRITE qUERY to find the employee whose salary is more than 30000 and less than 80000
SELECT * FROM Employee07 WHERE salary>=30000 AND salary<=80000;
--write query to find the max salary
-- write query to find total no. of employee
--find employee whose salary is less than 50000  and he is working in admin dept.
-- write query to arrange all the employees in descendind ordeer of salary
