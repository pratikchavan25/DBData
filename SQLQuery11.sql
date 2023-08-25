CREATE TABLE province_names(
province_id INT PRIMARY KEY,
province_name VARCHAR(30)
)

INSERT INTO province_names VALUES (5888,'SPARTAA')
INSERT INTO province_names VALUES (5777,'AEROX')
INSERT INTO province_names VALUES (5666,'RIVAL')


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

CREATE TABLE admissions1(
pateint_id INT FOREIGN KEY (pateint_id) REFERENCES patients01(patient_id),
admission_date DATE,
discharge_date DATE,
diagnosiz VARCHAR(30),
doctor_id INT  FOREIGN KEY  (doctor_id) REFERENCES doctors (doctor_id)
)

INSERT INTO admissions1 VALUES (11,'2017-5-6','2017-5-15','skintest',54)
INSERT INTO admissions1 VALUES (12,'2017-6-6','2017-6-20','scratchtest',58)
INSERT INTO admissions1 VALUES (13,'2017-7-6','2017-7-30','visiotest',75)

create TABLE doctors(
doctor_id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
speciality VARCHAR(25)
)

INSERT INTO doctors VALUES (45,'Farhan','Khan','surgeon')
INSERT INTO doctors VALUES (46,'guru','kumar','dentist')
INSERT INTO doctors VALUES (47,'rajesh','kapoor','OPD')