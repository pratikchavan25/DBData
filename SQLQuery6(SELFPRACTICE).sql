create table CARS5(
name varchar(20),
model_no int primary key,
type_of_vehicle varchar (25),
country varchar (20) 
)

ALTER table CARS5
--ALTER Column country int NOT NULLADD Price int

sp_help CARS5



--DML -->insert

--insert into CARS4  values ('audi',150,'sedan','UAE')
--insert into CARS4  values ('suzuki',155,'hatchback','UK')
--insert into CARS4 (name,model_no,type_of_vehicle,country) values('lamborghini',420,'supercar','Italy')
--insert into CARS4 (name,model_no,type_of_vehicle,country) values('Mustang',430,'superbee','France')
--insert into CARS4 (name,model_no,type_of_vehicle,country) values('Mercedes',450,'SUV','Berlin')


select * from CARS4

--update CARS4 set name = 'Gangster' where model_no = 430

--delete from CARS4 where type_of_vehicle ='SUV'

--insert into CARS4 (name,model_no,type_of_vehicle,country) values('Mercedes',450,'SUV','Berlin')

