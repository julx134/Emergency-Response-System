/* View all employees */

SELECT e.fullName, e.employeeID, e.employeeType, n.specialization
FROM Nurses n, Employee e
WHERE e.EmployeeID = n.EmployeeID
UNION
SELECT e.fullName, e.employeeID, e.employeeType, d.specialization
FROM Doctors d, Employee e
WHERE e.EmployeeID = d.EmployeeID
UNION
SELECT e.fullName, e.employeeID, e.employeeType, os.job_title
FROM Operations_Staff os, Employee e
WHERE e.EmployeeID = os.EmployeeID
UNION
SELECT e.fullName, e.employeeID, e.employeeType, le.profession
FROM Law_enforcement le, Employee e
WHERE e.EmployeeID = le.EmployeeID
ORDER BY employeeType ASC;