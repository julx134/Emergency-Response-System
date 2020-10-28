/*
Select all employees that are doctors
*/
SELECT *
FROM Employee
WHERE EmployeeType = 'doctor';

/*
Select all the EmployeeID of nurses
*/
SELECT DISTINCT employeeType, (select Count(*) from nurses) as NumofNurses
FROM nurses;

/*
Select logistic dates that are over October 20, 2020
*/
SELECT NumPatient, LogisticsDate
FROM Logistics
WHERE LogisticsDate >= TO_DATE('20-OCT-20','dd-MON-yy')
ORDER BY NumPatient Desc;

/*
Select all Patients that are male
*/
Select *
FROM Patients
WHERE Gender = 'M'
ORDER BY AGE asc;

/*
Select the patients who are over 20 with their PatientNum and their full names
*/
SELECT PatientID, FullName, Symptoms
From Patients
WHERE Age >= 20;

/*
Select all the beds
*/
SELECT *
From Bed;

/********************
* Advanced queries  *
********************/

/*
Display patients who have symptoms and the name and description of the
medicine they are taking as well as the dosage
JOINS PATIENT, MEDICINE PRESCRIPTION AND MEDICINE
*/
SELECT p.FullName, p.Symptoms, m.Name, m.Description, mp.Dosage
FROM Patients p, Medicine_Prescription mp, Medicine m
WHERE p.PatientID = mp.PatientID
    AND m.Medicine_ID = mp.Medicine_ID;


/*
Display the date patients were admitted, their bed_id and their
emergency contacts
JOINS PATIENT, BED, EMERGENCY_CONTACT
*/
SELECT DISTINCT p.FullName as Patient_Name,p.Admitted, b.bed_ID, p.logisticsDate, ec.FullName as Contact_Name, ec.Relation, ec.Tel_Number 
FROM Patients p, Emergency_Contact ec, Bed b
WHERE p.patientID = b.patientID
    AND p.logisticsDate = b.logisticsDate
    AND ec.PatientID = p.patientID;
    
    
/*
Display the credentials and the login info of all the doctors
*/
SELECT DISTINCT emp.FullName, d.specialization, acc.EmployeeID, acc.Username, acc.Password, acc.Emp_Privilege
FROM Doctors d, Employee emp, Account acc
WHERE emp.employeeID = acc.employeeID
    AND acc.employeeID = d.employeeID
    AND d.employeeID = emp.employeeID
    AND acc.emp_privilege = 'B';
    
    
/*
Uses union to find the set of queries for different types of employee
*/
SELECT emp.fullName, d.employeeType
FROM Employee emp, Doctors d
WHERE d.employeeID = emp.employeeID
UNION
SELECT emp.fullName, n.employeeType
FROM Employee emp, Nurses n
WHERE n.employeeID = emp.employeeID
UNION
SELECT emp.fullName, le.employeeType
FROM Employee emp, Law_Enforcement le
WHERE le.employeeID = emp.employeeID
UNION
SELECT emp.fullName, os.employeeType
FROM Employee emp, Operations_Staff os
WHERE os.employeeID = emp.employeeID;

/*List all the patients and their symptoms who don't have nausea
Uses MINUS
*/
SELECT *
FROM Patients
MINUS
SELECT *
FROM PATIENTS
WHERE Symptoms = 'Nausea';


/***************
    Views
***************/

/*
View to check the employee details of those who hold an account
*/
CREATE VIEW checkAccounts(Full_Name, Job, Username, Password, Privilege) AS
    (SELECT DISTINCT emp.FullName, emp.Employeetype, acc.username, acc.password, acc.EMP_privilege
     FROM Employee emp, Account acc
     WHERE acc.employeeID = emp.employeeID);
     
SELECT * FROM checkAccounts;

/*
View to check Medicine Logistics
*/

CREATE VIEW checkMedicines(PatientName, Meds, Description, Dosage, Consumption_Cycle, Inventory) AS
    (SELECT DISTINCT p.FullName, m.name, m.description, mp.dosage, mp.consumption_cycle, m.inventory
     FROM Patients p, Medicine m, Medicine_Prescription mp
     WHERE p.PatientID = mp.PatientID AND mp.medicine_ID = m.medicine_ID);

SELECT * FROM checkMedicines;

/*
View Staff Logistics
*/
CREATE VIEW checkStaff (Total_Staff,Doctors, Nurses, Operation_Staff,Law_Enforcement) AS
    (SELECT DISTINCT (SELECT COUNT(*) from Employee),(SELECT COUNT(*) from Doctors), (SELECT COUNT(*) from Nurses),
    (SELECT COUNT(*) from Operations_Staff), (SELECT COUNT(*) from Operations_Staff)
     FROM DOCTORS, NURSES, OPERATIONS_STAFF, LAW_ENFORCEMENT);
          
SELECT * FROM checkStaff
