CREATE TABLE province_names(
province_id INT PRIMARY KEY,
province_name VARCHAR(30)
)

INSERT INTO province_names VALUES (5888,'SPARTAA')
INSERT INTO province_names VALUES (5777,'AEROX')
INSERT INTO province_names VALUES (5666,'RIVAL')
SELECT * FROM province_names

CREATE TABLE patients01(
patient_id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender CHAR(1),
birth_date DATE,
city VARCHAR(30),
province_id CHAR(2),
allergies VARCHAR(80),
height DECIMAL(3,2),
weights DECIMAL(4,2)
)

INSERT INTO patients01 VALUES (11,'raj','singh','M','2000-10-25','pune',444,'skin-allergy',5.9,75)
INSERT INTO patients01 VALUES (12,'farhan','patil','M','2005-7-10','mumbai',555,'dust-allergy',4.9,90)
INSERT INTO patients01 VALUES (13,'riya','khan','F','2008-11-05','newyork',666,'flee-allergy',3.9,60)
INSERT INTO patients01 VALUES (14,'nilesh','kumar','M','1995-8-15','pune',777,'skin-allergy',5.8,85)

SELECT * FROM patients01

CREATE TABLE admissions1(
pateint_id INT FOREIGN KEY (pateint_id) REFERENCES patients01(patient_id),
admission_date DATE,
discharge_date DATE,
diagnosiz VARCHAR(30),
doctor_id INT  FOREIGN KEY  (doctor_id) REFERENCES doctors (doctor_id)
)

INSERT INTO admissions1 VALUES (11,'2017-5-6','2017-5-15','skintest',45)
INSERT INTO admissions1 VALUES (12,'2017-6-6','2017-6-20','scratchtest',46)
INSERT INTO admissions1 VALUES (13,'2017-7-6','2017-7-30','visiotest',47)

ALTER TABLE admissions1 ADD first_name VARCHAR(20)
ALTER TABLE admissions1 ADD last_name VARCHAR(20)
UPDATE admissions1 SET first_name = 'pratik' WHERE doctor_id = 14
SELECT * FROM admissions1

create TABLE doctors(
doctor_id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
speciality VARCHAR(25)
)

INSERT INTO doctors VALUES (45,'Farhan','Khan','surgeon')
INSERT INTO doctors VALUES (46,'guru','kumar','dentist')
INSERT INTO doctors VALUES (47,'rajesh','kapoor','OPD')

--Show the first name, last name and gender of patients who’s gender is ‘M’

SELECT first_name,last_name FROM patients01 WHERE gender = 'M';

--Show the patients details that height range 3.5 to 5.9

SELECT height FROM patients01 ;

--Show how many patients have birth year as 2000

SELECT COUNT (*) FROM patients01 WHERE birth_date = '2000-10-25'

--Show the patients details who have greatest height

SELECT COUNT (*) FROM patients01 WHERE height = 5.9

--Show the total amount of male patients and the total amount of female patients in the patients table.

SELECT * from patients01 WHERE gender = 'M' OR gender = 'F'

--Show first and last name, allergies from patients which have allergies to either 'SKIN' or 'DUST'

SELECT first_name,last_name FROM patients01 WHERE allergies = 'skin-allergy' OR allergies = 'dust-allergy'

--Show results ordered ascending by allergies then by first_name then by last_name.

SELECT first_name,last_name,allergies FROM patients01 ORDER BY allergies DESC

--Show first_name, last_name, and the total number of admissions attended for each doctor.

SELECT first_name,last_name FROM patients01 
