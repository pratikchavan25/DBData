CREATE TABLE CUSTOMERS(
customer_id INT PRIMARY KEY,
custome_name VARCHAR(25),
age INT,
city VARCHAR (15),
state VARCHAR (25),
dob DATE
)

INSERT INTO CUSTOMERS VALUES (111,'pawan','25','pune','maharashtra','2023-5-18');
INSERT INTO CUSTOMERS VALUES (112,'pankaj','28','mumbai','maharashtra','2023-5-18');
INSERT INTO CUSTOMERS VALUES (113,'pratik','35','banglore','delhi','2023-5-18');
INSERT INTO CUSTOMERS VALUES (114,'pritesh','45','surat','gujarat','2023-5-18');
INSERT INTO CUSTOMERS VALUES (115,'priya','15','nashik','maharashtra','2023-5-18');

SELECT * FROM CUSTOMERS
----------------------------------------------------------------------
CREATE TABLE ORDERS2(
orderid INT PRIMARY KEY,
customer_Id INT FOREIGN KEY REFERENCES CUSTOMERS (customer_id),
status_id INT,
orderdate DATE,
shipped_date DATE,
delivery_date DATE
)



