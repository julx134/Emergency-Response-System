/*
****************************************************************
* ASSIGNMENT 3 TABLES *
****************************************************************
Employee table
*/
CREATE TABLE Employee(
FullName VARCHAR(25) NOT NULL,
Rank VARCHAR(10) NOT NULL,
SIN NUMBER(7),
EmployeeID NUMBER(10),
_Type VARCHAR(15) NOT NULL CHECK (_Type IN ('doctor', 'nurses', 'law
enforcement', 'operations staff')),
PRIMARY KEY(EmployeeID),
FOREIGN KEY (Date, Location) REFERENCES Event(Date, Location)
);
/*
Account
*/
CREATE TABLE account (
Username VARCHAR(20),
Password VARCHAR(20),
Privileges CHAR,
PRIMARY KEY (Username, CHAR),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
/*
Schedule table
*/
CREATE TABLE schedule (
Date DATE,
Clock_In TIME NOT NULL,
Clock_Out TIME NOT NULL,
PRIMARY KEY (Date),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
/*
Doctor table
*/
CREATE TABLE doctors (
Specialization VARCHAR(20) NOT NULL,
_Type VARCHAR(20) DEFAULT 'doctor',
FOREIGN KEY (EmployeeID, _Type) REFERENCES Employee(EmployeeID, _Type)
);
/*
Nurses table
*/
CREATE TABLE nurses (
_Type VARCHAR(20) DEFAULT 'nurse',
FOREIGN KEY (EmployeeID, _Type) REFERENCES Employee(EmployeeID, _Type)
);
/*
Law Enforcement table
*/
CREATE TABLE Law_Enforcement (
Profession VARCHAR(20) NOT NULL,
_Type VARCHAR(20) DEFAULT 'law enforcement',
FOREIGN KEY (EmployeeID, _Type) REFERENCES Employee(EmployeeID, _Type)
);
/*
Operations Staff table
*/
CREATE TABLE Operations_Staff (
__Type VARCHAR(20) DEFAULT 'doctor',
FOREIGN KEY (EmployeeID, _Type) REFERENCES Employee(EmployeeID, _Type)
);
/*
Event
*/
CREATE TABLE Event (
Location VARCHAR(20) NOT NULL,
Description VARCHAR(20) NOT NULL,
Date DATE,
PRIMARY KEY(Date)
);
/*
Logistics
*/
CREATE TABLE Logistics (
Food VARCHAR(20) NOT NULL,
NumPatient NUMBER NOT NULL,
NumDoctor NUMBER NOT NULL,
NumNurse NUMBER NOT NULL,
NumStaff NUMBER NOT NULL,
NumBeds NUMBER NOT NULL,
Date DATE,
PRIMARY KEY(Date),
FOREIGN KEY(Bed_ID) REFERENCES Bed(Bed_ID),
FOREIGN KEY(Medicine_ID) REFERENCES Medicine(Medicine_ID),
FOREIGN KEY(Patient_ID) REFERENCES Patient(Patient_ID),
FOREIGN KEY (EmployeeID, _Type) REFERENCES Employee(EmployeeID, _Type)
);
/*
Patients
*/
CREATE TABLE Patients (
FullName VARCHAR(200) NOT NULL,
Patient_ID NUMBER(20) NOT NULL,
Age NUMBER(5) NOT NULL,
Gender CHAR NOT NULL,
SIN NUMBER(5) NOT NULL,
Health_CN NUMBER(14) NOT NULL,
Symptoms VARCHAR(200)NOT NULL,
_Record VARCHAR(200)NOT NULL,
PRIMARY KEY (PatientNum),
FOREIGN KEY (date) REFERENCES Logistics(date),
FOREIGN KEY (Medicine_ID) REFERENCES Medicine_Prescription(Medicine_ID),
FOREIGN KEY (Bed_ID) REFERENCES Beds(Bed_ID),
FOREIGN KEY (Relation) REFERENCES Emergency_Contact(Relation)
);
/*
Bed
*/
CREATE TABLE Bed(
Bed_ID NUMBER(5) ,
PRIMARY KEY (Bed_ID),
FOREIGN KEY (date) REFERENCES Logistics(date)
);
/*
Emergency Contact
*/
CREATE TABLE Emergency_Contact(
EName VARCHAR(200) NOT NULL,
Relation VARCHAR(200) PRIMARY KEY,
_Number NUMBER(10) NOT NULL,
Address VARCHAR (50) NOT NULL,
FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);
/*
Medicine Prescription
*/
CREATE TABLE Medicine_Prescription(
Medicine_ID NUMBER (20) PRIMARY KEY,
Dosage VARCHAR(20),
Consumption_Cycle VARCHAR (100) NOT NULL,
FOREIGN KEY (Medcine_ID) REFERENCES Medcine(Medicine_ID)
);
/*
Medicine
*/
CREATE TABLE Medicine(
Medicine_ID NUMBER (20) PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
Description_ VARCHAR(100)NOT NULL,
Inventory NUMBER(20)NOT NULL,
Location_ VARCHAR(20)NOT NULL,
FOREIGN KEY (date) REFERENCES Logistics(date)
);