/*
Logistics
*/
CREATE TABLE Logistics (
NumPatient NUMBER(10) NOT NULL,
NumDoctor NUMBER(10) NOT NULL,
NumNurse NUMBER(10) NOT NULL,
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
EmployeeID Number(10),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

/*
Nurses table
*/
CREATE TABLE nurses (
EmployeeID NUMBER(10),
Specialization VARCHAR2(20) NOT NULL,
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
/*
Law Enforcement table
*/
CREATE TABLE Law_Enforcement (
Profession VARCHAR2(20) NOT NULL,
EmployeeID Number(10),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
/*
Operations Staff table
*/
CREATE TABLE Operations_Staff (
Job_title VARCHAR2(20) NOT NULL,
EmployeeID NUMBER(10),
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
PRIMARY KEY (PatientID)
);

/*
DateAdmitted
*/
CREATE TABLE Date_Admitted (
Date_released DATE,
LogisticsDate DATE NOT NULL,
PatientID NUMBER(10)NOT NULL,
FOREIGN KEY (LogisticsDate) REFERENCES Logistics(LogisticsDate),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

/*
Bed
*/
CREATE TABLE Bed(
Bed_ID NUMBER(5) ,
PatientID NUMBER(10) NOT NULL,
Occupied CHAR DEFAULT 'N',
PRIMARY KEY (Bed_ID),
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
Relation VARCHAR2(200) NOT NULL,
Tel_Number NUMBER(10) NOT NULL,
Address VARCHAR2 (50) NOT NULL,
PatientID NUMBER(10),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

/*
Medicine Prescription
*/
CREATE TABLE Medicine_Prescription(
Medicine_ID NUMBER (20,0) NOT NULL,
PatientID NUMBER(10) NOT NULL,
Dosage VARCHAR2(20)NOT NULL,
Consumption_Cycle VARCHAR2 (100) NOT NULL,
FOREIGN KEY (Medicine_ID) REFERENCES Medicine(Medicine_ID),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);


DROP TABLE Event CASCADE CONSTRAINTS;
DROP TABLE Employee CASCADE CONSTRAINTS;
DROP TABLE account CASCADE CONSTRAINTS;
DROP TABLE schedule CASCADE CONSTRAINTS;
DROP TABLE doctors CASCADE CONSTRAINTS;
DROP TABLE nurses CASCADE CONSTRAINTS;
DROP TABLE Date_Admitted CASCADE CONSTRAINTS;
DROP TABLE Law_Enforcement CASCADE CONSTRAINTS; 
DROP TABLE Operations_Staff CASCADE CONSTRAINTS;
DROP TABLE Logistics CASCADE CONSTRAINTS;
DROP TABLE Patients CASCADE CONSTRAINTS;
DROP TABLE Bed CASCADE CONSTRAINTS;
DROP TABLE Medicine CASCADE CONSTRAINTS;
DROP TABLE Emergency_Contact CASCADE CONSTRAINTS;
DROP TABLE Medicine_Prescription CASCADE CONSTRAINTS;