#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "m534khan/06031477@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
SELECT DISTINCT p.FullName as Patient_Name,p.Admitted, b.bed_ID, p.logisticsDate, ec.FullName as Contact_Name, ec.Relation, ec.Tel_Number 
FROM Patients p, Emergency_Contact ec, Bed b
WHERE p.patientID = b.patientID
    AND p.logisticsDate = b.logisticsDate
    AND ec.PatientID = p.patientID;
exit;
EOF