/*Logistics Table */
DELETE FROM LOGISTICS
WHERE LogisticsDate = TO_DATE('xx/xx/xxxx','DD/MM/YYYY');


/*Employee table. Replace value with the input value */
DELETE FROM EMPLOYEE
WHERE EmployeeID = value;


/*Account table. Replace value with the input value */
DELETE FROM account
WHERE Username = value;


/*Doctor table */
DELETE FROM doctors
WHERE EmployeeID = value;

/*Nurses table */
DELETE FROM nurses
WHERE EmployeeID = value;


/*Law Enforcement table */
DELETE FROM Law_Enforcement
WHERE EmployeeID = value;

/*Operations_Staff table */
DELETE FROM Operations_Staff
WHERE EmployeeID = value;

/*Patients Table */
DELETE FROM Patients
WHERE PatientID = value;

/*Bed Table */
DELETE FROM Bed
WHERE BED_id = value;


/*Medicine Table */
DELETE FROM MEDICINE
WHERE Medicine_ID = value;

/*Emergency Contact Table */
DELETE FROM Emergency_Contact
WHERE PatientID = value;

/*Medicine Prescription*/
DELETE FROM Medicine_Prescription
WHERE Medicine = value;


/*Date Admitted Table */
DELETE FROM Date_Admitted
WHERE PatientID = value;
