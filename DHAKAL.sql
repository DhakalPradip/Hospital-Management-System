/* Creating a table for Building. */
CREATE TABLE BUILDING
(
  BuildId INT NOT NULL,
  BuildName VARCHAR(50) NOT NULL,
  BuildNoOfFloors INT NOT NULL,
  PRIMARY KEY (BuildId)
);
/* Inserting 10 records in the Building table.*/
Insert into BUILDING values ('1', 'A', '3');
Insert into BUILDING values ('2', 'B', '4');
Insert into BUILDING values ('3', 'C', '3');
Insert into BUILDING values ('4', 'D', '2');
Insert into BUILDING values ('5', 'E', '3');
Insert into BUILDING values ('6', 'F', '4');
Insert into BUILDING values ('7', 'G', '4');
Insert into BUILDING values ('8', 'H', '3');
Insert into BUILDING values ('9', 'I', '5');
Insert into BUILDING values ('10', 'J', '3');

/* Creating a table Nurse. */
CREATE TABLE NURSE
(
  NurseId INT NOT NULL,
  NurseName VARCHAR(50) NOT NULL,
  NurseStartDate DATE NOT NULL,
  NurseSalary INT NOT NULL,
  NurseBonus INT,
  PRIMARY KEY (NurseId)
);
/* Inserting 10 records into Nurse table. */
Insert into NURSE values ('101', 'Emma Watson', '2014-02-23','5000', Null);
Insert into NURSE values ('102', 'Pratima Dhakal', '2012-04-13', '6000', '1000');
Insert into NURSE values ('103', 'Martha Ballard', '2014-03-26', '5000', '500');
Insert into NURSE values ('104', 'Mary Seacole', '2017-09-25', '4500','500');
Insert into NURSE values ('105', 'Florence Nightingale', '2016-02-16', '6000', Null);
Insert into NURSE values ('106', 'Clarissa Barton', '2018-06-08', '5500', '250');
Insert into NURSE values ('107', 'Linda Richards', '2012-11-16', '4500', '1500');
Insert into NURSE values ('108', 'Martha Watson', '2014-01-01', '3500', '2000');
Insert into NURSE values ('109', 'Nisha Bista', '2015-05-05', '7000', Null);
Insert into NURSE values ('110', 'Shreya Hassan', '2014-06-16', '5000', '1000');

/* Creating a table Department*/
CREATE TABLE DEPARTMENT
(
  DepId INT NOT NULL,
  DepName VARCHAR(50) NOT NULL,
  DepHead VARCHAR(50) NOT NULL,
  PRIMARY KEY (DepId)
);
/* Inserting 10 records into Department table*/
Insert into DEPARTMENT values ('201', 'Emergency', 'Richard Russel');
Insert into DEPARTMENT values ('202', 'Cardiology', 'Demi Lovato');
Insert into DEPARTMENT values ('203', 'Neurology', 'Nick Jonas');
Insert into DEPARTMENT values ('204', 'Oncology', 'Daniel Watson');
Insert into DEPARTMENT values ('205', 'ENT', 'Chris Brown');
Insert into DEPARTMENT values ('206', 'Surgery', 'Pradip Dhakal');
Insert into DEPARTMENT values ('207', 'Gynecology', 'Pawan Khanal');
Insert into DEPARTMENT values ('208', 'Nephrology', 'Abash Gaire');
Insert into DEPARTMENT values ('209', 'Radiotherapy', 'Trent Russel');
Insert into DEPARTMENT values ('210', 'Pharmacy', 'Taylor Brown');

/* Creating a table Staff */
CREATE TABLE STAFF
(
  StaffId INT NOT NULL,
  StaffName VARCHAR(50) NOT NULL,
  StaffPhoneNum VARCHAR(15) NOT NULL,
  StaffAddress VARCHAR(100) NOT NULL,
  StaffStartDate DATE NOT NULL,
  StaffSalary INT NOT NULL,
  PRIMARY KEY (StaffId)
);
/* Inserting records in Staff table*/
Insert into STAFF values ('301', 'David Brown', '1234567890', '121 AB, X, YZ, 12345', '2013-02-15', '3000');
Insert into STAFF values ('302', 'Justin Russel', '1230456789', '123 AB, X, YZ, 23456', '2014-02-20', '2500');
Insert into STAFF values ('303', 'Thomas Peng', '1235467890', '131 AB, X, YZ, 34567', '2015-02-15', '2800');
Insert into STAFF values ('304', 'Yuting Peng', '1235476890', '131 AB, X, YZ, 34567', '2015-02-15', '2800');
Insert into STAFF values ('305', 'Richard Russel', '1235468790', '131 AB, X, YZ, 34567', '2015-02-15', '2800');
Insert into STAFF values ('306', 'Thomas Skinner', '1325467890', '131 AB, X, YZ, 34567', '2015-02-15', '2800');
Insert into STAFF values ('307', 'Pat Roblee', '1235067894', '131 AB, X, YZ, 34567', '2015-02-15', '2800');
Insert into STAFF values ('308', 'Keneeth Brown', '1230678945', '131 AB, X, YZ, 34567', '2015-02-15', '2800');
Insert into STAFF values ('309', 'Shijia Peng', '1235498760', '131 AB, X, YZ, 34567', '2015-02-15', '2800');
Insert into STAFF values ('310', 'David Baker', '1287654390', '131 AB, X, YZ, 34567', '2015-02-15', '2800');


/* Creating the Test table*/
CREATE TABLE TEST
(
  TestId INT NOT NULL,
  TesterName VARCHAR(50) NOT NULL,
  PRIMARY KEY (TestId)
);
/* Inserting 10 records in Test table*/
Insert into TEST values('401', 'Kelly Nash');
Insert into TEST values('402', 'Joanna Rohrback');
Insert into TEST values('403', 'Rob Ford');
Insert into TEST values('404', 'Chris Hadfield');
Insert into TEST values('405', 'Harry Hadfield');
Insert into TEST values('406', 'Chris Ford');
Insert into TEST values('407', 'Kelly Hudson');
Insert into TEST values('408', 'Rob Ford');
Insert into TEST values('409', 'Kelly Hudson');
Insert into TEST values('410', 'Chris Hadfield');

/* Table to denote which department is in which building*/
CREATE TABLE IsIn
(
  DepId INT NOT NULL,
  BuildId INT NOT NULL,
  PRIMARY KEY (DepId, BuildId),
  FOREIGN KEY (DepId) REFERENCES DEPARTMENT(DepId),
  FOREIGN KEY (BuildId) REFERENCES BUILDING(BuildId)
);
/* Inserting values for DepID and BuildID*/
Insert into IsIn values ('201', '1');
Insert into IsIn values ('202', '2');
Insert into IsIn values ('203', '3');
Insert into IsIn values ('204', '4');
Insert into IsIn values ('205', '5');
Insert into IsIn values ('206', '6');
Insert into IsIn values ('207', '7');
Insert into IsIn values ('208', '8');
Insert into IsIn values ('209', '9');
Insert into IsIn values ('210', '10');
Insert into IsIn values ('210', '3');

/* Since Nurse can have multiple qualities, we have a different table for this. */
CREATE TABLE NURSE_QUALITIES
(
  NurseQualities VARCHAR(250) NOT NULL,
  NurseId INT NOT NULL,
  PRIMARY KEY (NurseQualities, NurseId),
  FOREIGN KEY (NurseId) REFERENCES NURSE(NurseId)
);
/* Inserting qualities to the corresponding nurses*/
Insert into NURSE_QUALITIES values ('Q1', '101');
Insert into NURSE_QUALITIES values ('Q2', '101');
Insert into NURSE_QUALITIES values ('Q1', '102');
Insert into NURSE_QUALITIES values ('Q3', '103');
Insert into NURSE_QUALITIES values ('Q1', '104');
Insert into NURSE_QUALITIES values ('Q2', '104');
Insert into NURSE_QUALITIES values ('Q3', '104');
Insert into NURSE_QUALITIES values ('Q1', '105');
Insert into NURSE_QUALITIES values ('Q3', '105');
Insert into NURSE_QUALITIES values ('Q1', '106');
Insert into NURSE_QUALITIES values ('Q1', '107');
Insert into NURSE_QUALITIES values ('Q1', '108');
Insert into NURSE_QUALITIES values ('Q2', '108');
Insert into NURSE_QUALITIES values ('Q3', '108');
Insert into NURSE_QUALITIES values ('Q4', '108');
Insert into NURSE_QUALITIES values ('Q1', '109');
Insert into NURSE_QUALITIES values ('Q5', '109');
Insert into NURSE_QUALITIES values ('Q1', '110');
Insert into NURSE_QUALITIES values ('Q3', '110');
Insert into NURSE_QUALITIES values ('Q4', '110');

/* Creating a ROOM table*/
CREATE TABLE ROOM
(
  RoomId INT NOT NULL,
  RoomType VARCHAR(50) NOT NULL,
  BuildId INT NOT NULL,
  PRIMARY KEY (RoomId, BuildId),
  FOREIGN KEY (BuildId) REFERENCES BUILDING(BuildId)
);
/*Inserting values into ROOM table*/
Insert into ROOM values ('501', 'General', '2');
Insert into ROOM values ('501', 'Special', '9');
Insert into ROOM values ('502', 'General', '2');
Insert into ROOM values ('503', 'General', '2');
Insert into ROOM values ('504', 'General', '2');
Insert into ROOM values ('505', 'General', '2');
Insert into ROOM values ('506', 'General', '2');
Insert into ROOM values ('507', 'Special', '2');
Insert into ROOM values ('508', 'Special', '2');
Insert into ROOM values ('502', 'Special', '9');
Insert into ROOM values ('503', 'Special', '9');
Insert into ROOM values ('504', 'Special', '9');
Insert into ROOM values ('505', 'Special', '9');

/*Creating a DOCTOR table*/
CREATE TABLE DOCTOR
(
  DocId INT NOT NULL,
  DocName VARCHAR(50) NOT NULL,
  DocStartDate DATE NOT NULL,
  DocSalary INT NOT NULL,
  DocBonus INT,
  DepId INT NOT NULL,
  PRIMARY KEY (DocId),
  FOREIGN KEY (DepId) REFERENCES DEPARTMENT(DepId)
);
/* We calculate the Years of Working by subtracting current year - DocStartDate, and we do not need to store that in the database.*/
/* Inserting values into DOCTOR table.*/ 
Insert into DOCTOR values ('601', 'Pradip Dhakal', '2014-02-14', '200000', '10000', '201');
Insert into DOCTOR values ('602', 'Richard Nixon', '2013-04-16', '180000', '8000', '202');
Insert into DOCTOR values ('603', 'Denish Paudel', '2012-05-06', '210000', '9000', '203');
Insert into DOCTOR values ('604', 'Sunita Subedi', '2017-08-26', '220000', '5000', '204');
Insert into DOCTOR values ('605', 'Harry Brown', '2018-06-28', '160000', '6000', '205');
Insert into DOCTOR values ('606', 'Jack Bieber', '2016-07-28', '210000', Null, '206');
Insert into DOCTOR values ('607', 'Justin Sander', '2014-06-04', '200000', '1000', '207');
Insert into DOCTOR values ('608', 'Mack Russel', '2016-10-01', '220000', '3000', '208');
Insert into DOCTOR values ('609', 'Trent Morris', '2012-01-26', '160000', '1000', '209');
Insert into DOCTOR values ('610', 'Daniel Kapoor', '2019-02-04', '180000', '4000', '210');

/* A doctor can have many specializations. */
CREATE TABLE DOCTOR_SPECIALIZATION
(
  DocSpecialization VARCHAR(250) NOT NULL,
  DocId INT NOT NULL,
  PRIMARY KEY (DocSpecialization, DocId),
  FOREIGN KEY (DocId) REFERENCES DOCTOR(DocId)
);

/* Inserting values to DocSpecializations*/
Insert into DOCTOR_SPECIALIZATION values ('Specialization1', '601');
Insert into DOCTOR_SPECIALIZATION values ('Specialization3', '602');
Insert into DOCTOR_SPECIALIZATION values ('Specialization2', '603');
Insert into DOCTOR_SPECIALIZATION values ('Specialization4', '604');
Insert into DOCTOR_SPECIALIZATION values ('Specialization5', '605');
Insert into DOCTOR_SPECIALIZATION values ('Specialization6', '606');
Insert into DOCTOR_SPECIALIZATION values ('Specialization2', '607');
Insert into DOCTOR_SPECIALIZATION values ('Specialization4', '608');
Insert into DOCTOR_SPECIALIZATION values ('Specialization1', '609');
Insert into DOCTOR_SPECIALIZATION values ('Specialization2', '610');
Insert into DOCTOR_SPECIALIZATION values ('Specialization2', '601');
Insert into DOCTOR_SPECIALIZATION values ('Specialization2', '602');
Insert into DOCTOR_SPECIALIZATION values ('Specialization5', '603');

/* Table for which staff cleans which room of which building. */
CREATE TABLE Cleans
(
  RoomId INT NOT NULL,
  BuildId INT NOT NULL,
  StaffId INT NOT NULL,
  PRIMARY KEY (RoomId, BuildId, StaffId),
  FOREIGN KEY (RoomId, BuildId) REFERENCES ROOM(RoomId, BuildId),
  FOREIGN KEY (StaffId) REFERENCES STAFF(StaffId)
);
/* Inserting records into Clean.*/
Insert into CLeans values('501','2','301');
Insert into CLeans values('502','2','301');
Insert into CLeans values('503','2','301');
Insert into CLeans values('504','2','301');
Insert into CLeans values('505','2','302');
Insert into CLeans values('506','2','302');
Insert into CLeans values('507','2','302');
Insert into CLeans values('508','2','302');
Insert into CLeans values('501','9','303');
Insert into CLeans values('502','9','303');
Insert into CLeans values('503','9','303');
Insert into CLeans values('504','9','303');

/* Creating a Patient table. */
/* We calculate the age of the Patient by subtracting current year - year of date of birth, and we do not need to store that in the database.*/
CREATE TABLE PATIENT
(
  PatId INT NOT NULL,
  PatName VARCHAR(50) NOT NULL,
  PatStreetAddress VARCHAR(100) NOT NULL,
  PatCity VARCHAR(25) NOT NULL,
  PatState VARCHAR(25) NOT NULL,
  PatZip INT NOT NULL,
  PatBloodType VARCHAR(50) NOT NULL,
  PatAdmitedDate DATE NOT NULL,
  PatReleasedDate DATE NOT NULL,
  PatDob DATE NOT NULL,
  RoomId INT NOT NULL,
  BuildId INT NOT NULL,
  PRIMARY KEY (PatId),
  FOREIGN KEY (RoomId, BuildId) REFERENCES ROOM(RoomId, BuildId)
);
/* Inserting values into Patient table.*/
Insert into PATIENT values ('701', 'John Brown', '131 AB', 'X', 'YZ', '14564', 'A positive', '2013-04-15', '2013-04-20', '1990-02-14', '501','2');
Insert into PATIENT values ('702', 'Harry Guetta', '171 AB', 'X', 'YZ', '86485', 'O positive', '2013-02-22', '2013-02-28', '1987-03-15', '501','9');
Insert into PATIENT values ('703', 'Emily Hamilton', '161 AB', 'X', 'YZ', '35467', 'B positive', '2017-02-25', '2017-02-28', '1980-03-25', '501', '9');
Insert into PATIENT values ('704', 'Randy Bista', '171 AB', 'X', 'YZ', '87563', 'A positive', '2018-06-15', '2018-06-20', '1985-03-13', '502','2');
Insert into PATIENT values ('705', 'Brian Pitt', '181 AB', 'X', 'YZ', '98567', 'O negative', '2010-05-25', '2010-05-28', '1989-06-06', '503', '2');
Insert into PATIENT values ('706', 'John Dalton', '191 AB', 'X', 'YZ', '36485', 'B positive', '2014-06-06', '2014-06-10', '1988-07-07', '503', '2');
Insert into PATIENT values ('707', 'Bradd Clayton', '122 AB', 'X', 'YZ', '45376', 'A positive', '2013-12-05', '2013-12-10', '1987-03-02', '504', '2');
Insert into PATIENT values ('708', 'Justin Bieber', '123 AB', 'X', 'YZ', '45376', 'B positive', '2013-11-25', '2013-12-05', '1980-05-04', '505', '9');
Insert into PATIENT values ('709', 'DJ Khalid', '124 AB', 'X', 'YZ', '45376', 'A positive', '2013-12-05', '2013-12-10', '1982-04-16', '506', '2');
Insert into PATIENT values ('710', 'Mark Anthony', '125 AB', 'X', 'YZ', '45376', 'O positive', '2013-12-05', '2013-12-18', '1980-01-01', '507', '2');

/* Creating a table for BILL*/
CREATE TABLE BILL
(
  BillId INT NOT NULL,
  BillDocCharge INT NOT NULL,
  BillNurseCharge INT NOT NULL,
  BillRoomCharge INT NOT NULL,
  BillMedsCharge INT NOT NULL,
  BillTestCharge INT NOT NULL,
  PatId INT NOT NULL,
  PRIMARY KEY (BillId),
  FOREIGN KEY (PatId) REFERENCES PATIENT(PatId)
);
/* Inserting values into BILL*/
Insert into BILL values ('801', '1500', '500', '800', '900', '500', '701');
Insert into BILL values ('802', '1600', '600', '900', '300', '600', '702');
Insert into BILL values ('803', '1300', '700', '700', '500', '700', '703');
Insert into BILL values ('804', '1100', '800', '600', '400', '800', '704');
Insert into BILL values ('805', '1300', '600', '500', '800', '900', '705');
Insert into BILL values ('806', '1400', '400', '400', '900', '600', '706');
Insert into BILL values ('807', '1600', '500', '500', '700', '700', '707');
Insert into BILL values ('808', '1700', '800', '600', '600', '700', '708');
Insert into BILL values ('809', '1500', '500', '700', '500', '500', '709');
Insert into BILL values ('810', '1500', '700', '700', '800', '600', '710');

/* Creating a table TESTING.*/
CREATE TABLE TESTING
(
  TestDate DATE NOT NULL,
  PatId INT NOT NULL,
  TestId INT NOT NULL,
  PRIMARY KEY (PatId, TestId),
  FOREIGN KEY (PatId) REFERENCES PATIENT(PatId),
  FOREIGN KEY (TestId) REFERENCES TEST(TestId)
);
/* Inserting values into TESTING*/
Insert into TESTING values('2013-04-16', '701', '401');
Insert into TESTING values('2013-02-23', '702', '402');
Insert into TESTING values('2017-02-26', '703', '403');
Insert into TESTING values('2018-06-16', '704', '404');
Insert into TESTING values('2010-05-26', '705', '405');
Insert into TESTING values('2014-06-06', '706', '406');
Insert into TESTING values('2013-12-06', '707', '407');
Insert into TESTING values('2013-11-26', '708', '408');
Insert into TESTING values('2013-12-06', '709', '409');
Insert into TESTING values('2013-12-06', '710', '410');
Insert into TESTING values('2016-02-20', '701', '408');
Insert into TESTING values('2017-01-14', '705', '410');

/* Creating table Treats*/
CREATE TABLE Treats
(
  DocId INT NOT NULL,
  PatId INT NOT NULL,
  PRIMARY KEY (DocId, PatId),
  FOREIGN KEY (DocId) REFERENCES DOCTOR(DocId),
  FOREIGN KEY (PatId) REFERENCES PATIENT(PatId)
);
/*Inserting values for Treats table*/
Insert into Treats values ('601', '701');
Insert into Treats values ('602', '702');
Insert into Treats values ('603', '703');
Insert into Treats values ('604', '704');
Insert into Treats values ('605', '705');
Insert into Treats values ('606', '706');
Insert into Treats values ('607', '707');
Insert into Treats values ('608', '708');
Insert into Treats values ('609', '709');
Insert into Treats values ('610', '710');


/*Creating a LooksAfter table */
CREATE TABLE LooksAfter
(
  PatId INT NOT NULL,
  NurseId INT NOT NULL,
  PRIMARY KEY (PatId, NurseId),
  FOREIGN KEY (PatId) REFERENCES PATIENT(PatId),
  FOREIGN KEY (NurseId) REFERENCES NURSE(NurseId)
);

/* Inserting values into LooksAfter table*/
Insert into LooksAfter values ('701', '101');
Insert into LooksAfter values ('702', '102');
Insert into LooksAfter values ('703', '103');
Insert into LooksAfter values ('704', '104');
Insert into LooksAfter values ('705', '105');
Insert into LooksAfter values ('706', '106');
Insert into LooksAfter values ('707', '107');
Insert into LooksAfter values ('708', '108');
Insert into LooksAfter values ('709', '109');
Insert into LooksAfter values ('710', '110');


/* Retreiving data from all of the tables.*/
Select * from BUILDING;
Select * from NURSE;
Select * from DEPARTMENT;
Select * from STAFF;
Select * from TEST;
Select * from IsIn;
Select * from NURSE_QUALITIES;
Select * from ROOM;
Select * from DOCTOR;
Select * from DOCTOR_SPECIALIZATION;
Select * from Cleans;
Select * from PATIENT;
Select * from BILL
Select * from TESTING;
Select * from Treats;
Select * from LooksAfter;


/* Creating non-clustered indexes in columns that are subject to be used in the where clauses.*/
/* The purpose of creating the non clustered index is to speed up the data retrieval.*/

/* Creating non clustered index on Name*/
Create Index idx_PatientName
On PATIENT(PatName);

Create Index idx_DoctorName
On DOCTOR(DocName);

Create Index idx_NurseName
On NURSE(NurseName);

/* Creating non clustered index on City*/
Create Index idx_PatientCity
On PATIENT(PatCity);

/*Creating non clustered index on Salary*/
Create Index idx_DoctorSalary
On DOCTOR(DocSalary);

Create Index idx_StaffSalary
On STAFF(StaffSalary);

Create Index idx_NurseSalary
On NURSE(NurseSalary);

/*Creating non clustered index on RoomType */
Create Index idx_RoomType
On ROOM(RoomType);

/* A table can have more than one nonclustered indexes. */