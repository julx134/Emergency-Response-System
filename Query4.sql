/*Check account details */

SELECT DISTINCT emp.Employeetype, emp.fullname, acc.username, acc.password, acc.EMP_privilege
FROM Employee emp, Account acc
WHERE acc.employeeID = emp.employeeID
ORDER BY emp_privilege DESC;