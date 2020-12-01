#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "m534khan/06031477@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
/*
Logistics
*/
CREATE TABLE Logistics (
NumPatient NUMBER(10) NOT NULL,
NumDoctor NUMBER(10) NOT NULL,
NumNurse NUMBER(10) NOT NULL,
NumStaff NUMBER(10) NOT NULL,
NumBeds NUMBER(10) NOT NULL ,
LogisticsDate DATE NOT NULL,
PRIMARY KEY(LogisticsDate)
);

/*
Employee table
*/
CREATE TABLE Employee(
FullName VARCHAR2(25) NOT NULL,
SIN NUMBER(7,0),
EmployeeID NUMBER(10) NOT NULL,
EmployeeType VARCHAR2(20) NOT NULL CHECK (EmployeeType IN ('doctor', 'nurses', 'law enforcement', 'operations staff')),
PRIMARY KEY(EmployeeID)
);
/*
Account
*/
CREATE TABLE account (
Username VARCHAR2(20) PRIMARY KEY,
Password VARCHAR2(20) NOT NULL,
Emp_Privilege CHAR(1) NOT NULL,
EmployeeID NUMBER(10),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

/*
Schedule table
*/
CREATE TABLE schedule (
WorkDate DATE,
Clock_In TIMESTAMP NOT NULL,
Clock_Out TIMESTAMP NOT NULL,
EmployeeID NUMBER(10),
PRIMARY KEY (WorkDate),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

/*
Doctor table
*/
CREATE TABLE doctors (
Specialization VARCHAR2(20) NOT NULL,
EmployeeType VARCHAR2(20) DEFAULT 'doctor',
EmployeeID Number(10),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

/*
Nurses table
*/
CREATE TABLE nurses (
EmployeeType VARCHAR2(20) DEFAULT 'nurse',
EmployeeID NUMBER(10),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
/*
Law Enforcement table
*/
CREATE TABLE Law_Enforcement (
Profession VARCHAR2(20) NOT NULL,
EmployeeID Number(10),
EmployeeType VARCHAR2(20) DEFAULT 'law enforcement',
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
/*
Operations Staff table
*/
CREATE TABLE Operations_Staff (
EmployeeID NUMBER(10),
EmployeeType VARCHAR2(20) DEFAULT 'operations staff',
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
/*

/*
Patients
*/
CREATE TABLE Patients (
PatientID NUMBER(10) NOT NULL,
FullName VARCHAR2(200) NOT NULL,
Age NUMBER(5) NOT NULL,
Gender CHAR NOT NULL,
SIN NUMBER(5) NOT NULL,
Health_CN NUMBER(14,0) NOT NULL,
Symptoms VARCHAR2(200)NOT NULL,
LogisticsDate DATE,
Admitted CHAR DEFAULT 'Y',
PRIMARY KEY (PatientID),
FOREIGN KEY (LogisticsDate) REFERENCES Logistics(LogisticsDate)
);
/*
Bed
*/
CREATE TABLE Bed(
Bed_ID NUMBER(5) ,
LogisticsDate DATE,
PatientID NUMBER(10) NOT NULL,
PRIMARY KEY (Bed_ID),
FOREIGN KEY (LogisticsDate) REFERENCES Logistics(LogisticsDate),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

/*
Medicine
*/
CREATE TABLE Medicine(
Medicine_ID NUMBER (20,0) PRIMARY KEY,
Name VARCHAR2(20) NOT NULL,
Description VARCHAR2(100)NOT NULL,
Inventory NUMBER(20,0)NOT NULL
);

/*
Emergency Contact
*/
CREATE TABLE Emergency_Contact(
FullName VARCHAR2(200) NOT NULL,
Relation VARCHAR2(200) PRIMARY KEY,
Tel_Number NUMBER(10) NOT NULL,
Address VARCHAR2 (50) NOT NULL,
PatientID NUMBER(10),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
/*
Medicine Prescription
*/
CREATE TABLE Medicine_Prescription(
Medicine_ID NUMBER (20,0) PRIMARY KEY,
PatientID NUMBER(10) NOT NULL,
Dosage VARCHAR2(20)NOT NULL,
Consumption_Cycle VARCHAR2 (100) NOT NULL,
FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

exit;
EOF
