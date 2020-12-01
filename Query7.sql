/* List details of young patients */

SELECT p.PatientID, p.FullName, p.Symptoms, ec.fullname AS Emergency_Contact_Name, ec.relation, ec.tel_number
From Patients p, Emergency_Contact ec
WHERE p.Age <= 21 AND p.PatientID = ec.PatientID;

