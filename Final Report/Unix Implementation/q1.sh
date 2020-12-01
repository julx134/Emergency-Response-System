#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "m534khan/06031477@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
SELECT p.FullName, p.Symptoms, m.Name, m.Description, mp.Dosage
FROM Patients p, Medicine_Prescription mp, Medicine m
WHERE p.PatientID = mp.PatientID
    AND m.Medicine_ID = mp.Medicine_ID;
exit;
EOF