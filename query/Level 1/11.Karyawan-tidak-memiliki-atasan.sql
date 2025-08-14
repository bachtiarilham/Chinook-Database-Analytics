/*	Mengidentifikasi siapa satu-satunya karyawan 
	di perusahaan yang tidak melapor kepada siapa pun (CEO).
*/

SELECT 
	employee.firstName AS employeefirstname,
	employee.lastName AS employeelastname,

FROM 
	employee AS employee
	LEFT JOIN employee AS manager
		ON employee.ReportsTo = manager.EmployeeId
	
	WHERE employee.ReportsTo IS NULL 

;