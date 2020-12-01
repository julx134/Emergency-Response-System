#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "m534khan/06031477@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
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
exit;
EOF
