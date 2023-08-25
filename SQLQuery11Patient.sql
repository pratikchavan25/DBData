
CREATE TABLE PATIENT2(
patient_id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
gender CHAR(10),
birth_date VARCHAR,
city VARCHAR(30),
province_id CHAR(2),
allergies VARCHAR(80),
height DECIMAL(3,0),
weight DECIMAL(4,0)
)
exec sp_help patients		

INSERT INTO PATIENT2 VALUES (11,'rajesh','srivastava','male','1996-10-26','pune',1,'pneumonia',5.9,90)
INSERT INTO PATIENT2 VALUES (12,'mahesh','patil','male','16-11-'1996,'banglore',1,'chickengunia',4.2,85)
INSERT INTO PATIENT2 VALUES (13,'ritesh','dsouza','male',1996-12-1,'UAE',1,'malaria',5.5,45)
INSERT INTO PATIENT2 VALUES (14,'riya','desai','female',1995-05-11,'gangtok',1,'fever',5.2,50)
INSERT INTO PATIENT2 VALUES (15,'rani','bhadane','female',1994-06-10,'ocrama',1,'food-allergy',4.5,68)
INSERT INTO PATIENT2 VALUES (16,'pritesh','kumar','male',1990-8-2,'moscow',1,'pet-alllergy',5.1,91)
INSERT INTO PATIENT2 VALUES (17,'girish','kapoor','male',1991-4-28,'yana',1,'insect-allergy',4.9,82)
INSERT INTO PATIENT2 VALUES (18,'akash','singh','male',1998-6-25,'newyork',1,'pest-allergy',5.4,92)
INSERT INTO PATIENT2 VALUES (19,'ridhima','pooda','female',1999-8-22,'faurasea',1,'mold-allergy',3.5,52)
INSERT INTO PATIENT2 VALUES (20,'anshuman','khan','male',2005-1-31,'pune',1,'dirt-allergy',4.8,56)
INSERT INTO PATIENT2 VALUES (21,'nilesh','khan','male',1989-7-4,'pune',1,'drug--allergy',6.1,60)
INSERT INTO PATIENT2 VALUES (22,'tara','sutariya','female',2000-2-30,'pune',1,'medicine-allergy',6.4,75)

CREATE TABLE DOCTORS(
doctor_id INT,
first_name VARCHAR(30),
last_name VARCHAR(30),
speciality VARCHAR(25)
)
INSERT INTO DOCTORS VALUES (40,'harish','walia','surgeon')
INSERT INTO DOCTORS VALUES (41,'girish','jondhale','dentist')
INSERT INTO DOCTORS VALUES (42,'paritosh','patil','wardboy')
INSERT INTO DOCTORS VALUES (43,'nilesh','khan','OPD')
INSERT INTO DOCTORS VALUES (44,'pravin','kumar','staff')

CREATE TABLE ADMISSIONSs(
patient_id INT FOREIGN KEY (patient_id) REFERENCES PATIENT1 (patient_id),
admission_date DATE,
discgarge_date DATE,
diagnosis VARCHAR(50),
attending_doctor_id INT
)
INSERT INTO ADMISSIONSs VALUES (11,'10-5-2023','15-5-2023','skin_test',20)
INSERT INTO ADMISSIONSs VALUES (12,'11-6-2020','16-8-2023','blood_test',21)
INSERT INTO ADMISSIONSs VALUES (13,'12-7-2021','17-7-2023','scratch_test',22)
INSERT INTO ADMISSIONSs VALUES (14,'13-8-2022','18-4-2023','vision_test',23)
INSERT INTO ADMISSIONSs VALUES (15,'14-9-2011','19-9-2023','skin_test',24)


gdgd000000



