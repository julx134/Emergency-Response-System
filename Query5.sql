/*List all the patients and their symptoms who don't have nausea
Uses MINUS
*/
SELECT *
FROM Patients
MINUS
SELECT *
FROM PATIENTS
WHERE Symptoms = 'Nausea'

