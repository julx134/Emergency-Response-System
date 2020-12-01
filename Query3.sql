/*Check patients details and their assigned beds. */

SELECT DISTINCT p.fullName, b.Bed_ID, b.Occupied, l.LogisticsDate, da.date_released, (da.date_released - l.logisticsDate) AS NumDays
FROM Bed b, Patients p, Logistics l, Date_admitted da
WHERE p.patientID = b.patientID AND p.patientID = da.patientID AND da.LOGISTICSDATE = l.LOGISTICSDATE
ORDER BY occupied ASC;