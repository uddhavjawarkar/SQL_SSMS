use PB3

create table Doctor
(Did int primary key,
dname varchar(50) not null,
daddress varchar(50),
qualification varchar(50) default 'BHMS',
No_of_patient_handled int default 0);

select*from Doctor;
insert into Doctor values(101 , 'Jidnesh' , 'Akola','ME',12),(102,'Bhairav','Pune','BHMS',15),(103,'Surya','Mumbai','Surgen',8),(104,'Raj','Nagpur','Homeopathy',9),(105,'Madhu','Shegaon','Child_Specialist',17);

create table PatientMaster
(pcode int primary key,
pname varchar(50) not null,
paddress varchar(50),
age int not null,
gender varchar(20) not null,
blood_group varchar(20) not null,
);

--drop table PatientMaster;
select*from PatientMaster;
select*from Doctor
insert into PatientMaster values(501,'Suyog','Akola',25,'male','B+');
insert into PatientMaster values(502,'Prithvi','VishakhaPattanm',35,'male','A+');
insert into PatientMaster values(505,'Samyra','Jihu',45,'female','O+');
insert into PatientMaster values(503,'Amol','J&K',20,'male','O-');
insert into PatientMaster values(504,'Pallavi','Patna',27,'female','AB+');


create table AdmittedPatient
(Entry_date date ,
Discharege_date date ,
wardno int,
desease varchar(20) default 'Check_Up' not null,
did int foreign key references Doctor(Did),
pcode int foreign key references PatientMaster(pcode));


select*from AdmittedPatient;
select*from PatientMaster
select*from Doctor

--drop table AdmittedPatient
insert into AdmittedPatient values('2022-04-26','2022-04-30',5,'Heart Checkup',102,504);
insert into AdmittedPatient values('2022-05-30','2022-06-01',6,'Surgery',103,502);
insert into AdmittedPatient values('2022-02-12','2022-03-20',2,'Paralysis',104,501);
insert into AdmittedPatient values('2022-01-01','2022-01-10',1,'Pain',101,503);
insert into AdmittedPatient values('2021-06-18','2021-07-01',4,'Headache',105,505);

create table Bill
(billno int not null,
bill_amount bigint,
pcode int foreign key references PatientMaster(pcode));


insert into Bill values(1001,10000,505);
insert into Bill values(1002,40000,504);
insert into Bill values(1003,110000,503);
insert into Bill values(1004,70000,504);
insert into Bill values(1005,35000,501);
use PB3

select*from AdmittedPatient;
select*from PatientMaster;
select*from Doctor;
select*from Bill;

--1.	Write a queries to create all tables with primary key ,foreign key
alter table Doctor add primary key (Did);

alter table PatientMaster add primary key (pcode);

alter table AdmittedPatient add primary key (pcode);

alter table Bill add primary key (pcode);

--2.	Write a query to describe above tables;
sp_help Doctor;
sp_help PatientMaster;
sp_help AdmittedPatient;
sp_help Bill;

--3.	write a query to drop primary key from patientMaster
alter table PatientMaster drop constraint PK__PatientM__293812AA29957E31;

--4.	Suppose Discharge _date is not present into AdmittedPatient write query to add Discharge_date column into the AdmittedPatient
alter table AdmittedPatient Add Discharge_date date;

--5.	write a query to change the data type ward no int to varchar(10)
alter table AdmittedPatient alter column wardno varchar(10);

--6.	write a query to drop one foreign key from AdmittedPatient
alter table AdmittedPatient drop constraint FK__AdmittedPat__did__22751F6C;


--7.	write a query to add foreign key such that if parent is delete or update child also delete or update 





--8.	write a query to add primary key to patientMaster
alter table PatientMaster
add primary key (pcode);



--9.	write a query to insert 5 records into the Doctor table
insert into Doctor values(101 , 'Jidnesh' , 'Akola','ME',12),(102,'Bhairav','Pune','BHMS',15),(103,'Surya','Mumbai','Surgen',8),(104,'Raj','Nagpur','Homeopathy',9),(105,'Madhu','Shegaon','Child_Specialist',17);
select*from Doctor;

--10.	write a query find the no. of doctors as per qualification
select qualification from Doctor;
select qualification,count(*) from Doctor  group by qualification;

select daddress , count(*) from Doctor  group by daddress;

select * from Doctor;


--11.	difference between primary key and unique key

           ----- Primary Key ----------
   --In the case of a primary key, we cannot save NULL values.
   --The primary key tends to generate a clustered index by default.
   --Each table holds just one primary key.
   --With the primary key, we cannot modify or delete the values.

    ------------ unique key -------------
   --In the case of a unique key, we can save a null value, however, only one NULL value is supported.
  --The unique key tends to generate a non-clustered index
  --A table can hold more than one unique key.
  --With the unique key, we can modify the column values.


