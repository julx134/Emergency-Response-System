/*Logistics Table. Each variable_name corresponds to the input value a user will enter*/

INSERT INTO LOGISTICS
VALUES(numPatient, numDoctor,numNurse,numBeds,TO_DATE('xx/xx/xxxx','DD/MM/YYYY'));
/*
-Replace 'xx/xx/xxxx' with actual date values - this is a primary key
-numPatient, numDoctor, numNurse, numBeds have integer values up to 10 digits and cannot be null
*/


/*Employee table */
INSERT INTO EMPLOYEE
VALUES(fullName, SIN, EmployeeID, EmployeeType);
/*
-Fullname is a string up to 25 characters long and cannot be null
-SIN is an integer up to 7 digits
-EmployeeID is an integer up to 10 digits and is the primary key and cannot be null
EmployeeType is a string that only takes 'doctor', 'nurses', 'law enforcement' and 'operations staff' as values

/*Account table */
INSERT INTO account
VALUES(Username, Password, Emp_Privilege, EmployeeID);
/*
-Username is a string 20 characters long and is the primary key
-Password is a string 20 characters long and cannot be null
-Emp_Privilege is a character ranging from A-Z where A is the highest privilege and cannot be null
-EmployeeID is an integer up to 10 digits long and is a foreign key
*/

/*Doctor table */
INSERT INTO doctors
VALUES(specialization, EmployeeID);
/*
-specialization is a string 20 characters long and cannot be null
-EmployeeID is an integer up to 10 digits long and is a foreign key
*/


/*Nurses table */
INSERT INTO nurses
VALUES(EmployeeID, specialization);
/*
-specialization is a string 20 characters long and cannot be null
-EmployeeID is an integer up to 10 digits long and is a foreign key
*/

/*Law Enforcement table */
INSERT INTO Law_Enforcement
VALUES(specialization, EmployeeID);
/*
-specialization is a string 20 characters long and cannot be null
-EmployeeID is an integer up to 10 digits long and is a foreign key
*/

/*Operations_Staff table */
INSERT INTO OPerations_Staff
VALUES(specialization, EmployeeID);
/*
-specialization is a string 20 characters long and cannot be null
-EmployeeID is an integer up to 10 digits long and is a foreign key
*/

/*Patients Table */
INSERT INTO Patients
VALUES(PatientID, FullName, Age, Gender, SIN, Health_CN, Symptoms);
/*
-PatientID is an integer up to 10 digits and is the primary key
-FullName is a string up to 200 characters long and cannot be null
-Age is an intger up to 5 digits and cannot be null
-Gender is a character either 'M' or 'F' and cannot be null
-SIN is an integer up to 5 digits and cannot be null
-Health_CN is an integer up to 14 digits and cannot be null
-Symptoms is a string up to 200 characters long
*/

/*Bed Table */
INSERT INTO Bed
VALUES(BED_ID,PatientID, Occupied);
/*
-BED_ID is an integer up to 5 digits and is the primary key
-PatientID is an integer up to 10 digits and is a foreign key
-Occupied is a character that is defaulted to 'N'
*/


/*Medicine Table */
INSERT INTO MEDICINE
VALUES(Medicine_ID, Name, Description, Inventory);
/*
-Medicine_ID is an integer up to 20 digits and is the primary key
-Name is a string 20 characters long and cannot be null
-Description is a string 100 characters long and cannot be null
-Inventory is an integer up to 20 digits and cannot be null
*/

/*Emergency Contact Table */
INSERT INTO Emergency_Contact
VALUES(FullName, Relation, Tel_Number, Address, PatientID);
/*
-FullName is a string 200 characters long and cannot be null
-Relation is a string 200 characters long and cannot be null
-Tel_number is an integer up to 10 digits and cannot be null
-Address is a string 50 characters long and cannot be null
-PatientID is an integer up to 10 digits and is a foreign key
*/

/*Medicine Prescription*/
INSERT INTO Medicine_Prescription
VALUES(Medicine_ID, PatientID, Dosage, Consumption_Cycle);
/*
-Medicine_ID is an integer up to 20 digits and is a foreign key
-PatientID is an integer up to 10 digits and is a foreign key
-Dosage is a string 20 characters long and cannot be null
-Consumption_Cycle is a string 100 characters long and cannot be null
*/

/*Date Admitted Table */
INSERT INTO Date_Admitted
VALUES(TO_DATE('xx/xx/xxxx','DD/MM/YYYY'), TO_DATE('xx/xx/xxxx','DD/MM/YYYY'), PatientID);
/*
-The first variable is the date released and can be set to default null value
-The second variable is the Logistics_Date and is a foreign key
-PatientID is an integer up to 10 digits and is a foreign key
*/

