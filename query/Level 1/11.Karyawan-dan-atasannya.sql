/*	Karyawan dan Atasannya: 
   Tampilkan nama depan dan nama belakang setiap karyawan 
	beserta nama depan dan nama belakang atasannya.
*/

SELECT 
	employee.firstName AS employeefirstname,
	employee.lastName AS employeelastname,
	manager.FirstName AS managerfirstname,
	manager.LastName AS managerlastname
FROM 
	employee AS employee
	LEFT JOIN employee AS manager
		ON employee.ReportsTo = manager.EmployeeId
	;