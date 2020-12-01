/*Lists the patients and the medicine prescription they have and the details of it*/

SELECT p.fullname, p.patientId, m.name, m.medicine_ID, m.description, mp.dosage, mp.consumption_cycle
FROM Patients p, Medicine_prescription mp, Medicine m
WHERE p.PatientID = mp.PatientID AND mp.Medicine_ID = m.Medicine_ID