/*List all the doctors and nurses and their details */

SELECT e.fullName, e.employeeID, e.employeeType, n.specialization
FROM Nurses n, Employee e
WHERE e.EmployeeID = n.EmployeeID
UNION
SELECT e.fullName, e.employeeID, e.employeeType, d.specialization
FROM Doctors d, Employee e
WHERE e.EmployeeID = d.EmployeeID
ORDER BY fullName ASC;

