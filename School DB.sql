/*
****************************************************************
* ASSIGNMENT 3 TABLES *
****************************************************************
Event
*/
CREATE TABLE Event (
Location VARCHAR2(20) NOT NULL,
Description VARCHAR2(20) NOT NULL,
EventDate DATE NOT NULL,
PRIMARY KEY(EventDate, Location)
);
/*
Employee table
*/
CREATE TABLE Employee(
FullName VARCHAR2(25) NOT NULL,
EmployeeRank VARCHAR2(10) NOT NULL,
SIN NUMBER(7,0),
EmployeeID NUMBER(10) NOT NULL,
EmployeeType VARCHAR2(15) NOT NULL CHECK (EmployeeType IN ('doctor', 'nurses', 'law
enforcement', 'operations staff')),
EventDate DATE,
Location VARCHAR2(20),
PRIMARY KEY(EmployeeID, EmployeeType),
FOREIGN KEY (EventDate, Location) REFERENCES Event(EventDate, Location)
);
DROP TABLE Employee;
/*
Account
*/
CREATE TABLE account (
Username VARCHAR2(20) PRIMARY KEY,
Password VARCHAR2(20) NOT NULL,
Emp_Privilege VARCHAR(2) NOT NULL,
EmployeeID NUMBER(10),
EmployeeType VARCHAR2(15) NOT NULL CHECK (EmployeeType IN ('doctor', 'nurses', 'law
enforcement', 'operations staff')),
FOREIGN KEY (EmployeeID, EmployeeType) REFERENCES Employee(EmployeeID, EmployeeType)
);
DROP TABLE account;
/*
Schedule table
*/
CREATE TABLE schedule (
EventDate DATE,
Clock_In TIMESTAMP NOT NULL,
Clock_Out TIMESTAMP NOT NULL,
EmployeeID NUMBER(10),
EmployeeType VARCHAR2(15) NOT NULL CHECK (EmployeeType IN ('doctor', 'nurses', 'law
enforcement', 'operations staff')),
PRIMARY KEY (EventDate),
FOREIGN KEY (EmployeeID, EmployeeType) REFERENCES Employee(EmployeeID, EmployeeType)
);
/*
Doctor table
*/
CREATE TABLE doctors (
Specialization VARCHAR2(20) NOT NULL,
EmployeeType VARCHAR2(20) DEFAULT 'doctor',
EmployeeID Number(10),
FOREIGN KEY (EmployeeID, EmployeeType) REFERENCES Employee(EmployeeID, EmployeeType)
);
DROP TABLE doctors;

/*
Nurses table
*/
CREATE TABLE nurses (
EmployeeType VARCHAR2(20) DEFAULT 'nurse',
EmployeeID NUMBER(10),
FOREIGN KEY (EmployeeID, EmployeeType) REFERENCES Employee(EmployeeID, EmployeeType)
);
/*
Law Enforcement table
*/
CREATE TABLE Law_Enforcement (
Profession VARCHAR2(20) NOT NULL,
EmployeeID Number(10),
EmployeeType VARCHAR2(20) DEFAULT 'law enforcement',
FOREIGN KEY (EmployeeID, EmployeeType) REFERENCES Employee(EmployeeID, EmployeeType)
);
/*
Operations Staff table
*/
CREATE TABLE Operations_Staff (
EmployeeID NUMBER(10),
EmployeeType VARCHAR2(20) DEFAULT 'doctor',
FOREIGN KEY (EmployeeID, EmployeeType) REFERENCES Employee(EmployeeID, EmployeeType)
);
/*

/*
Logistics
*/
CREATE TABLE Logistics (
Food VARCHAR2(20) NOT NULL,
NumPatient NUMBER(10) NOT NULL,
NumDoctor NUMBER(10) NOT NULL,
NumNurse NUMBER(10) NOT NULL,
NumStaff NUMBER(10) NOT NULL,
NumBeds NUMBER(10) NOT NULL,
LogisticsDate DATE NOT NULL,
EmployeeID NUMBER(10),
EmployeeType VARCHAR2(15) NOT NULL CHECK (EmployeeType IN ('doctor', 'nurses', 'law
enforcement', 'operations staff')),
PRIMARY KEY(LogisticsDate),
FOREIGN KEY (EmployeeID, EmployeeType) REFERENCES Employee(EmployeeID, EmployeeType)
);
/*
Patients
*/
CREATE TABLE Patients (
PatientNum NUMBER(10) NOT NULL,
FullName VARCHAR2(200) NOT NULL,
Patient_ID NUMBER(20,0) NOT NULL,
Age NUMBER(5,0) NOT NULL,
Gender CHAR NOT NULL,
SIN NUMBER(5,0) NOT NULL,
Health_CN NUMBER(14,0) NOT NULL,
Symptoms VARCHAR2(200)NOT NULL,
Record VARCHAR2(200)NOT NULL,
LogisticsDate DATE,
PRIMARY KEY (PatientNum),
FOREIGN KEY (LogisticsDate) REFERENCES Logistics(LogisticsDate)
);
/*
Bed
*/
CREATE TABLE Bed(
Bed_ID NUMBER(5) ,
LogisticsDate DATE,
PRIMARY KEY (Bed_ID),
FOREIGN KEY (LogisticsDate) REFERENCES Logistics(LogisticsDate)
);

/*
Medicine
*/
CREATE TABLE Medicine(
Medicine_ID NUMBER (20,0) PRIMARY KEY,
Name VARCHAR2(20) NOT NULL,
Description VARCHAR2(100)NOT NULL,
Inventory NUMBER(20,0)NOT NULL,
Location VARCHAR2(20)NOT NULL,
LogisticsDate DATE,
FOREIGN KEY (LogisticsDate) REFERENCES Logistics(LogisticsDate)
);

/*
Emergency Contact
*/
CREATE TABLE Emergency_Contact(
EName VARCHAR2(200) NOT NULL,
Relation VARCHAR2(200) PRIMARY KEY,
Tel_Number NUMBER(10) NOT NULL,
Address VARCHAR2 (50) NOT NULL,
PatientNum NUMBER(10),
FOREIGN KEY (PatientNum) REFERENCES Patients(PatientNum)
);
/*
Medicine Prescription
*/
CREATE TABLE Medicine_Prescription(
Medicine_ID NUMBER (20,0) PRIMARY KEY,
Dosage VARCHAR2(20),
Consumption_Cycle VARCHAR2 (100) NOT NULL,
FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID)
);

ALTER TABLE Logistics 
ADD (Bed_ID NUMBER(5) NOT NULL,
    Medicine_ID NUMBER(20,0),
    PatientNum NUMBER(10,0));

ALTER TABLE Logistics
ADD (FOREIGN KEY(Bed_ID) REFERENCES Bed(Bed_ID),
    FOREIGN KEY(Medicine_ID) REFERENCES Medicine(Medicine_ID),
    FOREIGN KEY(PatientNum) REFERENCES Patients(PatientNum));

ALTER TABLE Patients
ADD (Medicine_ID NUMBER(20,0),
     Bed_ID NUMBER(5),
     Relation VARCHAR(200));

ALTER TABLE Patients
ADD (FOREIGN KEY (Medicine_ID) REFERENCES Medicine_Prescription(Medicine_ID),
     FOREIGN KEY (Bed_ID) REFERENCES Bed(Bed_ID),
     FOREIGN KEY (Relation) REFERENCES Emergency_Contact(Relation));



