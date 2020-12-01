#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "m534khan/06031477@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
SELECT DISTINCT emp.FullName, d.specialization, acc.EmployeeID, acc.Username, acc.Password, acc.Emp_Privilege
FROM Doctors d, Employee emp, Account acc
WHERE emp.employeeID = acc.employeeID
    AND acc.employeeID = d.employeeID
    AND d.employeeID = emp.employeeID
    AND acc.emp_privilege = 'B';
exit;
EOF