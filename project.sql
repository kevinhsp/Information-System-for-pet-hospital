--create 7 tables for pet hospitol services
create table CustomerInfo(
Customer_ID number (10) primary key,
Customer_Name varchar(40),
Customer_PhoneNo number(12),
Email varchar(60),
address varchar(60)
);

create table PetInfo(
Pet_ID number(6) primary key,
Customer_ID number(10),
Pet_Name varchar(20),
Pet_Breed varchar(40),  
Pet_Birthdate date,
constraint fk_Customerid foreign key (Customer_ID)
references CustomerInfo (Customer_ID)
);

create table Doctor (
Doctor_ID number(15£© primary key,
Doctor_Name varchar(20),
Doctor_PhoneNo number(12),
Doctor_Adress varchar(60),
Entry_Date date,
Area_of_Expertise char(30),
Shift_Date varchar(100)
);

create table Appointment(
Reservation_No number(20) primary key,
Customer_ID number(10),
Doctor_ID number(15),
Appointment_Date date,
Week number(1),
Appointment_Time varchar(20),
constraint fk_Custid foreign key (Customer_ID)
references CustomerInfo (Customer_ID),
constraint fk_Doctorid foreign key (Doctor_ID)
references Doctor (Doctor_ID)
);

create table Bill(
Bill_No number(20) primary key,
Reservation_No number(20),
Bill_date date,
bill_status char(10),
constraint fk_resvno foreign key (Reservation_No)
references Appointment(Reservation_No)
);

create table Payment(
Paymemt_No number(20) primary key,
Customer_ID number(10),
Bill_No number(20),
Pay_Date date,
Payment_Method char(10),
Amount_Received varchar(20),
Remaining_Balance varchar(20),
constraint fk_Cusid foreign key (Customer_ID)
references CustomerInfo (Customer_ID),
constraint fk_bilno foreign key (Bill_No)
references Bill (Bill_No)
);

create table Treatment_Order (
Treatment_No number(12) primary key,
Pet_ID number(6),
Doctor_ID number(15),
Diagonosis_Instruction varchar(500),
Drug_Dosage varchar(500),
Drug_Description varchar(500),
constraint fk_petid foreign key (Pet_ID)
references PetInfo (Pet_ID),
constraint fk_doctorid1 foreign key (Doctor_ID)
references Doctor (Doctor_ID)
);

--insert values to each table
/*create table CustomerInfo(
Customer_ID number (10) primary key,
Customer_Name varchar(40),
Customer_PhoneNo number(12),
Email varchar(60),
address varchar(60)
);
*/
select*
from customerinfo;
insert into CustomerInfo values ('1001','May Tracy', '8607845124','May.Tracy@gmail.com', '45 West Ave, West Hartford, CT'); 
insert into CustomerInfo values ('1002','Kevin zhang','8672587851','kevin@hotmail.com', '1231 constitution rd, Boston, MA');
insert into CustomerInfo values ('1003','Fiona Stewart', '9298521025','stewart.F@gmail.com', '978 w hubbard Ave,farmington, CT'); 
insert into CustomerInfo values ('1004','William John', '5174851245','w.johns@gmail.com', '100 central blvd, Hartford, CT'); 
insert into CustomerInfo values ('1005','Clara King', '8601275412','kingsca@hotmail.com', '17854 Alabaman rd, winsdow, CT'); 
insert into CustomerInfo values ('1006','Avery Hall', '9298745124','9298745124@gmail.com', '524 grand ave, apt1542, new haven, CT'); 
insert into CustomerInfo values ('1007','Ray Byrd', '8742584197','raywilliambryd@gmail.com', '78412 lincoln rd, West Hartford, CT'); 
insert into CustomerInfo values ('1008','Peter Walker', '7854127854','peterwalker12@gmail.com', '100 main st, unit212, Hartford, CT'); 

/*create table PetInfo(
Pet_ID number(6) primary key,
Customer_ID number(10),
Pet_Name varchar(20),
Pet_Breed varchar(40),  
Pet_Birthdate date,
constraint fk_Customerid foreign key (Customer_ID)
references CustomerInfo (Customer_ID)
);
*/
select *
from Petinfo;
insert into PetInfo values ('158001','1001','coco','bulldog dog','01-Jan-2012');
insert into PetInfo values ('158002','1002','charlie','poodle dog','14-Jan-2017');
insert into PetInfo values ('158003','1002','milo','cat','28-Nov-2015');
insert into PetInfo values ('158004','1003','max','british shorthair cat','01-Jan-2012');
insert into PetInfo values ('158005','1004','lucy','ragdoll cat','17-Aug-2019');
insert into PetInfo values ('158006','1005','bella','chihuahua dog','26-Dec-2010');
insert into PetInfo values ('158007','1006','oscar','labrador retriever dog','08-Jun-2014');
insert into PetInfo values ('158008','1007','bailey','british shorthair cat','05-Jul-2017');
insert into PetInfo values ('158009','1008','ollie','golden retriever dog','22-Sep-2018');

/*create table Doctor (
Doctor_ID number(15£© primary key,
Doctor_Name varchar(20),
Doctor_PhoneNo number(12),
Doctor_Adress varchar(60),
Entry_Date date,
Area_of_Expertise char(30),
Shift_Date varchar(100)
);*/
select *
from doctor;
insert into Doctor values ('71001','Max Cox','9874175137','789 ocean rd, new britain, CT','01-May-2018','general care','1,2,3,4,5'); 
insert into Doctor values ('71025','Shaun Vinson','9287414857','8741 west hartford,CT','01-May-2018','general care','3,4,5,6,7');
insert into Doctor values ('71003','Melvin Riddle','5174824127','12 carpen st, windsor,CT','27-Aug-2018','general care','2,3,4,5,6');
insert into Doctor values ('71011','Lexie Henderson','8607514896','715 main st, unit2178, hartford,CT','26-Dec-2018','dental care','1,2,3,4,5');
insert into Doctor values ('71020','Cassius Oneill','9735678951','182 w hawk dr, west hartford,CT','01-May-2018','vaccinations','1,2,5,6,7');
insert into Doctor values ('71005','Mell Russell','8602781574','875 e rooselvolt rd, springfield, CT','08-May-2018','vaccinations','1,2,3,4,7');
insert into Doctor values ('71008','Brook Little','8607841027','11 linden rd,manchester, CT','15-Jun-2018','ophthalmology','1,2,3,4,5');
insert into Doctor values ('71018','Jackson Davidson','8607514896','875 turnpick blvd, hartford, CT','01-May-2018','ophthalmology','1,2,3,6,7');

/*create table Appointment(
Reservation_No number(20) primary key,
Customer_ID number(10),
Doctor_ID number(15),
Appointment_Date date,
Week number(1),
Appointment_Time varchar(20),
constraint fk_Custid foreign key (Customer_ID)
references CustomerInfo (Customer_ID),
constraint fk_Doctorid foreign key (Doctor_ID)
references Doctor (Doctor_ID)
);*/

select *
from appointment;
insert into Appointment values ('2004010001','1003','71025','01-Apr-2020','3','12:30');
insert into Appointment values ('2004015001','1008','71020','14-Apr-2020','2','09:30');
insert into Appointment values ('2004018001','1005','71011','17-Apr-2020','5','12:00');
insert into Appointment values ('2004190002','1002','71008','16-Apr-2020','4','08:00');
insert into Appointment values ('2005030001','1001','71001','04-May-2020','1','13:00');
insert into Appointment values ('2004300001','1007','71008','30-Apr-2020','4','10:00');
insert into Appointment values ('2005010001','1001','71020','01-May-2020','5','11:30');
insert into Appointment values ('2005110001','1006','71011','11-May-2020','1','14:00');


/*create table Bill(
Bill_No number(20) primary key,
Reservation_No number(20),
Bill_date date,
bill_status char(10),
constraint fk_resvno foreign key (Reservation_No)
references Appointment(Reservation_No)
);*/
insert into Bill values ('20200401100','2004010001','02-Apr-2020','received');
insert into Bill values ('20200415105','2004015001','15-Apr-2020','received');
insert into Bill values ('20200418123','2004018001','18-Apr-2020','pending');
insert into Bill values ('20200419147','2004190002','19-Apr-2020','pending');

/*create table Payment(
Paymemt_No number(20) primary key,
Customer_ID number(10),
Bill_No number(20),
Pay_Date date,
Payment_Method char(10),
Amount_Received varchar(20),
Remaining_Balance varchar(20),
constraint fk_Cusid foreign key (Customer_ID)
references CustomerInfo (Customer_ID),
constraint fk_bilno foreign key (Bill_No)
references Bill (Bill_No)
); */
insert into Payment values ('1','1003','20200401100','02-Apr-2020','Visa','$89.77','$0.00');
insert into Payment values ('2','1008','20200415105','15-Apr-2020','Cash','$177.26','$0.00');
insert into Payment values ('3','1005','20200418123','18-Apr-2020','N/A','$125.18','$89.77');
insert into Payment values ('4','1006','20200419147','19-Apr-2020','Visa','$327.19','$198.23');

/*create table Treatment_Order (
Treatment_No number(12) primary key,
Pet_ID number(6),
Doctor_ID number(15),
Diagonosis_Instruction varchar(500),
Drug_Dosage varchar(500),
Drug_Description varchar(500),
constraint fk_petid foreign key (Pet_ID)
references PetInfo (Pet_ID),
constraint fk_doctorid1 foreign key (Doctor_ID)
references Doctor (Doctor_ID)
);*/
insert into Treatment_Order values ('1128789','158004','71025','diet issue,vomitting every morning','take twice daily','HomeoPet Digestive Upset');
insert into Treatment_Order values ('1175128','158006','71011','Vaccination','3 times per 6 months','Duramune Max 5 25ct');
insert into Treatment_Order values ('1180672','158008','71008','dental care, teeth cleaning','twice daily, morning and evening suggested','Petlab Dental Care Water');
insert into Treatment_Order values ('1189350','158007','71011','surgery','follow-up inspection','Frontline Spary for pets,Calmpaw behavior support protective collar');

--Reports
--1.If the pet hospital wants to send advertisements to customers via email, it wants to know what kind of pets each customer has.
select customer.customer_id,customer.customer_Name,pet.pet_breed,customer.email
from CustomerInfo customer join PetInfo pet
on customer.customer_id=pet.customer_id
;
--2.The appointment system has been linked to the available working time in the doctor system,
--which ensures that the appointment time of the customer matches the doctor's shift time.
select aptm.doctor_id, doc.doctor_name,listagg(aptm.week,',') within group (order by aptm.week) as Appointments_per_Week,
doc.shift_date
from Appointment aptm join Doctor doc
on aptm.doctor_id=doc.doctor_id
group by aptm.doctor_id,doc.shift_date,doc.doctor_name
;

--3.If the doctor wants to know the pet's breed, date of birth, and previous diagnosis records 
--after knowing the pet id at the time of diagnosis, you can enter the pet id and get all the information
--for example, the doctor wants to know the information of a pet which id is '158006'.
select * 
from(select pet_id,pet_name,pet_breed,pet_birthdate
from PetInfo
where pet_id='&petid') a join
(select pet_id,doctor_id, Diagonosis_Instruction,drug_dosage,drug_description
from treatment_order
where pet_id='&petid') b
on a.pet_id=b.pet_id
;

--4. if the hospital want to remind the customers who did not clear their billing, they can generate a report to show their 
--remaining balance and their contact information. Thus, recepitionist can call or send email to inform the customers
-- to pay their bill on time. 
select a.customer_name,a.customer_phoneno,a.email,b.remaining_balance
from customerinfo a join payment b
on a.customer_id = b.customer_id
where b.remaining_balance <> '$0.00'
;